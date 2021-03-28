#!/usr/bin/env zsh
domain=$(zenity --entry --title "Domain / subdomains / emails" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
  mkdir /root/Cases/$domain
  mkdir /root/Cases/$domain/files
    metagoofil -d $domain -w -t pdf,doc,xls,ppt,docx,xlsx,pptx -o "/root/Cases/$domain/files/"$timestamp"_docs_"$domain""
							sleep 3
							raccoon $domain -o /root/Cases/$domain
								sleep 3 
								finalrecon --full http://$domain -o /root/Cases/$domain/$domain.fn
									sleep 3
									getallurls $domain -o /root/Cases/$domain/$domain.getallurls.txt
										sleep 3	
										thunar "/root/Cases/$domain" >/dev/null 2>&1
											sleep 1
											arachnid http://$domain
