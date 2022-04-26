# Lehigh University Advanced Applications of Psychometric Principles (EDUC412)

The official repo for Lehigh University EDUC 412 (2022 Spring)

The repo is hosted on Github [https://github.com/Hedgehog-Computing/EDUC412](https://github.com/Hedgehog-Computing/EDUC412), including the implementation of all functions.

## How to use this repo

To start using `icc/lif/tcc/tif` functions, please click [**this link**](https://hhlab.dev/?code=*import%20EDUC412%3Aicc%2Ciif%2C%20tcc%2C%20tif%0A%0Ab%20%3D%20%5B-1.0%2C%20-0.5%2C%200%2C%200.5%2C%201.0%5D%0Aa%20%3D%20%5B2.0%2C%201.5%2C%201.5%2C%201.5%2C%202.0%5D%0Ac%20%3D%20%5B0%2C0%2C0%2C0%2C0%5D%0A%0A%2F%2F%20Uncomment%20any%20of%20the%20following%20functions%20to%20use%0A%2F%2F%20Click%20%22Run%22%20button%20for%20execution%0A%0Aicc(b%2Ca%2Cc)%0A%2F%2Fiif(b%2Ca%2Cc)%0A%2F%2Ftcc(b%2Ca%2Cc)%0A%2F%2Ftif(b%2Ca%2Cc)&auto_run=true) to get started:

[**Demo playground in Hedgehog Lab**](hhttps://hhlab.dev/?code=*import%20EDUC412%3Aicc%2Ciif%2C%20tcc%2C%20tif%0A%0Ab%20%3D%20%5B-1.0%2C%20-0.5%2C%200%2C%200.5%2C%201.0%5D%0Aa%20%3D%20%5B2.0%2C%201.5%2C%201.5%2C%201.5%2C%202.0%5D%0Ac%20%3D%20%5B0%2C0%2C0%2C0%2C0%5D%0A%0A%2F%2F%20Uncomment%20any%20of%20the%20following%20functions%20to%20use%0A%2F%2F%20Click%20%22Run%22%20button%20for%20execution%0A%0Aicc(b%2Ca%2Cc)%0A%2F%2Fiif(b%2Ca%2Cc)%0A%2F%2Ftcc(b%2Ca%2Cc)%0A%2F%2Ftif(b%2Ca%2Cc)&auto_run=true)

Here are some examples of using `icc/lif/tcc/tif` functions (no installation or configuration required):

### Item Information Function (IIF) `icc(b,a,c)`

```js
*import EDUC412:icc,iif, tcc, tif

b = [-1.0, -0.5, 0, 0.5, 1.0]
a = [2.0, 1.5, 1.5, 1.5, 2.0]
c = [0,0,0,0,0]

icc(b,a,c)
```

### Item Information Function (IIF) `iif(b,a,c)`

```js
*import EDUC412:icc,iif, tcc, tif

b = [-1.0, -0.5, 0, 0.5, 1.0]
a = [2.0, 1.5, 1.5, 1.5, 2.0]
c = [0,0,0,0,0]

iif(b,a,c)
```

### Test Characteristic Curve (TCC) `tcc(b,a,c)`

```js
*import EDUC412:icc,iif, tcc, tif

b = [-1.0, -0.5, 0, 0.5, 1.0]
a = [2.0, 1.5, 1.5, 1.5, 2.0]
c = [0,0,0,0,0]

tcc(b,a,c)
```

### Test Information Function (TIF) ```tif(b,a,c)```

```js
*import EDUC412:icc,iif, tcc, tif

b = [-1.0, -0.5, 0, 0.5, 1.0]
a = [2.0, 1.5, 1.5, 1.5, 2.0]
c = [0,0,0,0,0]

tic(b,a,c)
```

You can copy and paste the above codes or uncomment any of the functions to use them in the Hedgehog Lab playground.