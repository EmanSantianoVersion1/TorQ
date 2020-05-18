\d .dqc

/- Check whether the referenced column of a table is in another column of another table
refdatacheck:{[tablea;tableb;cola;colb]
  .lg.o[`refdatacheck;"checking whether refrence data is covered in the other column"];
  msg:$[c:all r:tablea[cola]in tableb colb;
    "All data from ",(string cola)," of ",(string tablea),"exists in ",(string colb), " of ",string tableb;
    "The following data did not exist in",(string colb), " of ",(string tableb),": ",string tablea[cola]where not r];
    .lg.o[`refdatacheck;"refdatacheck completed; All data from ",(string cola),$[msg;"did";"did not"]," exist in ",string colb];
    (c;msg)
