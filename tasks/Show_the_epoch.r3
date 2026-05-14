Rebol [
    title: "Rosetta code: Show the epoch"
    file:  %Show_the_epoch.r3
    url:   https://rosettacode.org/wiki/Show_the_epoch
]

print to date! 0            ;; convert UNIX timestamp: 0 to date
print now
print now/utc
print to integer! now       ;; convert current date to UNIX timestamp
;; Using formating:
printf ["Unix timestamp now is: " <unixepoch>] now