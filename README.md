# Text to Binary and Binary to Text conversion 
## MATLAB Code

### Important to note that this is a ""function"" file not script, you need to pass variables to execute this program. Please DO NOT just click on RUN and report that this is not WORKING!!!!

#### Step 1.  Save "text2bin.m" and "bin2text.m" files in your current directory of MATLAB

##### *To convert text to binary ===*

#### Step 2. Define variable text, e.g. 

```
text = 'Hello World';
```

#### Step 3. Then write  

```
[binV, binS] = text2bin(text);
```

##### *To convert Binary to text back ===*

#### Step 4. Write  

```
text2 = bin2text(binV);   
or  
text3 = bin2text(binS);
```
      
### Explaination
##### Above functions convert text into binary and binary to text
##### text2bin return  two variables, binV: vector of double and binS: vector of string

### Example 
#####Run following commands ofter saving file in your current directory

```
text = 'Hello World';
[binV, binS] = text2bin(text);
text2 = bin2text(binV);
text3 =  bin2text(binS);
```
#####Now Check

```
text, binV, binS, text2, text3, text3;
```

#####You can directly write as 

```
[binV, binS] = text2bin('Hello World');
```

#### ===========================================
###### If any doubt, confusion or feedback please contact;
###### Nikesh Bajaj    http://nikeshbajaj.in;
###### bajaj.nikkey@gmail.com;
###### PhD Scholar, University of Genova and Queen Mary University of London;
