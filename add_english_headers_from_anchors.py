import glob
import re
import os

files = glob.glob("content/docs/*.mdx")

def title_case(s):
    # Simple title case implementation
    # Split by hyphen or space
    words = s.replace('-', ' ').split()
    # Capitalize first letter of each word
    return ' '.join(w.capitalize() for w in words)

def process_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    lines = content.split('\n')
    new_lines = []
    
    i = 0
    while i < len(lines):
        line = lines[i]
        
        # Check for anchor definition: <a name="anchor-slug"></a>
        anchor_match = re.match(r'^<a name="(.*)"></a>', line)
        
        if anchor_match:
            anchor_slug = anchor_match.group(1)
            new_lines.append(line)
            
            # Look ahead for the header (allow for 1 empty line in between)
            header_index = -1
            if i + 1 < len(lines) and lines[i+1].strip().startswith('#'):
                header_index = i + 1
            elif i + 2 < len(lines) and lines[i+1].strip() == '' and lines[i+2].strip().startswith('#'):
                new_lines.append(lines[i+1]) # Add the empty line
                header_index = i + 2
                i += 1 # Advance i to point to the empty line, loop will increment again
            
            if header_index != -1:
                header_line = lines[header_index]
                # Parse header
                # Match ## Header Text
                header_match = re.match(r'^(#+)\s+(.*)', header_line)
                if header_match:
                    hashes = header_match.group(1)
                    text = header_match.group(2)
                    
                    # Check if text contains Chinese characters
                    has_chinese = bool(re.search(r'[\u4e00-\u9fff]', text))
                    
                    if has_chinese:
                        # Derive English title from anchor
                        english_candidate = title_case(anchor_slug)
                        
                        # Check if English candidate is already in text (case insensitive)
                        # We also check for "Introduction" specifically for "introduction" anchor
                        if english_candidate.lower() not in text.lower():
                            # Special handling: sometimes the anchor is slightly different or has extra words
                            # But we will trust the anchor derivation as a fallback
                            
                            # Avoid double parenthesis if there is already some English in parens
                            # But user wants "Chinese (English Original)"
                            # If there is already (Something), we assume it might be the English original.
                            # But we only skip if it *contains* our candidate or if we are unsure.
                            # Let's be aggressive: if it doesn't contain the candidate, append it.
                            
                            # However, we should check if the header ends with ')'
                            if not text.strip().endswith(')'):
                                new_header = f"{hashes} {text} ({english_candidate})"
                                new_lines.append(new_header)
                                i = header_index + 1 # Skip the header line we just processed
                                continue
                            else:
                                # It ends with ')'. Check if the content inside parens matches
                                # e.g. "設定 (Configuration)" -> candidate "Configuration". Match.
                                # e.g. "Foo (Bar)" -> candidate "Baz". mismatch.
                                pass
                
                # If we didn't update, just add the original header line
                new_lines.append(header_line)
                i = header_index + 1
                continue
        
        new_lines.append(line)
        i += 1

    # Write back if changed
    new_content = '\n'.join(new_lines)
    if new_content != content:
        print(f"Updating {filepath}")
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(new_content)

for f in files:
    process_file(f)
