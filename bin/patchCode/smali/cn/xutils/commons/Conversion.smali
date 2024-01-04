.class public Lcn/xutils/commons/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FFFF:[Z

.field private static final FFFT:[Z

.field private static final FFTF:[Z

.field private static final FFTT:[Z

.field private static final FTFF:[Z

.field private static final FTFT:[Z

.field private static final FTTF:[Z

.field private static final FTTT:[Z

.field private static final TFFF:[Z

.field private static final TFFT:[Z

.field private static final TFTF:[Z

.field private static final TFTT:[Z

.field private static final TTFF:[Z

.field private static final TTFT:[Z

.field private static final TTTF:[Z

.field private static final TTTT:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    nop

    .line 65
    const/4 v0, 0x4

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lcn/xutils/commons/Conversion;->TTTT:[Z

    .line 66
    new-array v1, v0, [Z

    fill-array-data v1, :array_1

    sput-object v1, Lcn/xutils/commons/Conversion;->FTTT:[Z

    .line 67
    new-array v1, v0, [Z

    fill-array-data v1, :array_2

    sput-object v1, Lcn/xutils/commons/Conversion;->TFTT:[Z

    .line 68
    new-array v1, v0, [Z

    fill-array-data v1, :array_3

    sput-object v1, Lcn/xutils/commons/Conversion;->FFTT:[Z

    .line 69
    new-array v1, v0, [Z

    fill-array-data v1, :array_4

    sput-object v1, Lcn/xutils/commons/Conversion;->TTFT:[Z

    .line 70
    new-array v1, v0, [Z

    fill-array-data v1, :array_5

    sput-object v1, Lcn/xutils/commons/Conversion;->FTFT:[Z

    .line 71
    new-array v1, v0, [Z

    fill-array-data v1, :array_6

    sput-object v1, Lcn/xutils/commons/Conversion;->TFFT:[Z

    .line 72
    new-array v1, v0, [Z

    fill-array-data v1, :array_7

    sput-object v1, Lcn/xutils/commons/Conversion;->FFFT:[Z

    .line 73
    new-array v1, v0, [Z

    fill-array-data v1, :array_8

    sput-object v1, Lcn/xutils/commons/Conversion;->TTTF:[Z

    .line 74
    new-array v1, v0, [Z

    fill-array-data v1, :array_9

    sput-object v1, Lcn/xutils/commons/Conversion;->FTTF:[Z

    .line 75
    new-array v1, v0, [Z

    fill-array-data v1, :array_a

    sput-object v1, Lcn/xutils/commons/Conversion;->TFTF:[Z

    .line 76
    new-array v1, v0, [Z

    fill-array-data v1, :array_b

    sput-object v1, Lcn/xutils/commons/Conversion;->FFTF:[Z

    .line 77
    new-array v1, v0, [Z

    fill-array-data v1, :array_c

    sput-object v1, Lcn/xutils/commons/Conversion;->TTFF:[Z

    .line 78
    new-array v1, v0, [Z

    fill-array-data v1, :array_d

    sput-object v1, Lcn/xutils/commons/Conversion;->FTFF:[Z

    .line 79
    new-array v1, v0, [Z

    fill-array-data v1, :array_e

    sput-object v1, Lcn/xutils/commons/Conversion;->TFFF:[Z

    .line 80
    new-array v0, v0, [Z

    fill-array-data v0, :array_f

    sput-object v0, Lcn/xutils/commons/Conversion;->FFFF:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_6
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_f
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryBeMsb0ToHexDigit([Z)C
    .locals 1
    .param p0, "src"    # [Z

    .line 410
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/Conversion;->binaryBeMsb0ToHexDigit([ZI)C

    move-result v0

    return v0
.end method

.method public static binaryBeMsb0ToHexDigit([ZI)C
    .locals 3
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I

    .line 431
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-ltz v0, :cond_1

    .line 433
    array-length v0, p0

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert an empty array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not within array length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 440
    .local v0, "pos":I
    const/4 v2, 0x3

    if-gt v2, v0, :cond_9

    add-int/lit8 v2, v0, -0x3

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_9

    .line 441
    add-int/lit8 v1, v0, -0x2

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_5

    .line 442
    add-int/lit8 v1, v0, -0x1

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_3

    .line 443
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_2

    const/16 v1, 0x66

    goto :goto_0

    :cond_2
    const/16 v1, 0x65

    :goto_0
    return v1

    .line 445
    :cond_3
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_4

    const/16 v1, 0x64

    goto :goto_1

    :cond_4
    const/16 v1, 0x63

    :goto_1
    return v1

    .line 447
    :cond_5
    add-int/lit8 v1, v0, -0x1

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_7

    .line 448
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_6

    const/16 v1, 0x62

    goto :goto_2

    :cond_6
    const/16 v1, 0x61

    :goto_2
    return v1

    .line 450
    :cond_7
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_8

    const/16 v1, 0x39

    goto :goto_3

    :cond_8
    const/16 v1, 0x38

    :goto_3
    return v1

    .line 452
    :cond_9
    const/4 v2, 0x2

    if-gt v2, v0, :cond_d

    add-int/lit8 v2, v0, -0x2

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_d

    .line 453
    add-int/lit8 v1, v0, -0x1

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_b

    .line 454
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_a

    const/16 v1, 0x37

    goto :goto_4

    :cond_a
    const/16 v1, 0x36

    :goto_4
    return v1

    .line 456
    :cond_b
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_c

    const/16 v1, 0x35

    goto :goto_5

    :cond_c
    const/16 v1, 0x34

    :goto_5
    return v1

    .line 458
    :cond_d
    if-gt v1, v0, :cond_f

    add-int/lit8 v1, v0, -0x1

    aget-boolean v1, p0, v1

    if-eqz v1, :cond_f

    .line 459
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_e

    const/16 v1, 0x33

    goto :goto_6

    :cond_e
    const/16 v1, 0x32

    :goto_6
    return v1

    .line 461
    :cond_f
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_10

    const/16 v1, 0x31

    goto :goto_7

    :cond_10
    const/16 v1, 0x30

    :goto_7
    return v1
.end method

.method public static binaryToByte([ZIBII)B
    .locals 6
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # B
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .line 982
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 983
    :cond_1
    return p2

    .line 985
    :cond_2
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x8

    if-ge v0, v1, :cond_4

    .line 988
    move v0, p2

    .line 989
    .local v0, "out":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_3

    .line 990
    add-int v2, v1, p3

    .line 991
    .local v2, "shift":I
    add-int v3, v1, p1

    aget-boolean v3, p0, v3

    shl-int/2addr v3, v2

    .line 992
    .local v3, "bits":I
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    .line 993
    .local v4, "mask":I
    not-int v5, v4

    and-int/2addr v5, v0

    or-int/2addr v5, v3

    int-to-byte v0, v5

    .line 989
    .end local v2    # "shift":I
    .end local v3    # "bits":I
    .end local v4    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 995
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 986
    .end local v0    # "out":B
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+dstPos is greater or equal to than 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static binaryToHexDigit([Z)C
    .locals 1
    .param p0, "src"    # [Z

    .line 285
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/Conversion;->binaryToHexDigit([ZI)C

    move-result v0

    return v0
.end method

.method public static binaryToHexDigit([ZI)C
    .locals 2
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I

    .line 303
    array-length v0, p0

    if-eqz v0, :cond_f

    .line 306
    array-length v0, p0

    add-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_7

    add-int/lit8 v0, p1, 0x3

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_7

    .line 307
    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_3

    .line 308
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_1

    .line 309
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    goto :goto_0

    :cond_0
    const/16 v0, 0x65

    :goto_0
    return v0

    .line 311
    :cond_1
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    const/16 v0, 0x63

    :goto_1
    return v0

    .line 313
    :cond_3
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_5

    .line 314
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_4

    const/16 v0, 0x62

    goto :goto_2

    :cond_4
    const/16 v0, 0x61

    :goto_2
    return v0

    .line 316
    :cond_5
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_6

    const/16 v0, 0x39

    goto :goto_3

    :cond_6
    const/16 v0, 0x38

    :goto_3
    return v0

    .line 318
    :cond_7
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_b

    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_b

    .line 319
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_9

    .line 320
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_8

    const/16 v0, 0x37

    goto :goto_4

    :cond_8
    const/16 v0, 0x36

    :goto_4
    return v0

    .line 322
    :cond_9
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_a

    const/16 v0, 0x35

    goto :goto_5

    :cond_a
    const/16 v0, 0x34

    :goto_5
    return v0

    .line 324
    :cond_b
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_d

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_d

    .line 325
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_c

    const/16 v0, 0x33

    goto :goto_6

    :cond_c
    const/16 v0, 0x32

    :goto_6
    return v0

    .line 327
    :cond_d
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_e

    const/16 v0, 0x31

    goto :goto_7

    :cond_e
    const/16 v0, 0x30

    :goto_7
    return v0

    .line 304
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert an empty array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static binaryToHexDigitMsb0_4bits([Z)C
    .locals 1
    .param p0, "src"    # [Z

    .line 345
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/Conversion;->binaryToHexDigitMsb0_4bits([ZI)C

    move-result v0

    return v0
.end method

.method public static binaryToHexDigitMsb0_4bits([ZI)C
    .locals 3
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I

    .line 365
    array-length v0, p0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_10

    .line 368
    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_f

    .line 371
    add-int/lit8 v0, p1, 0x3

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_7

    .line 372
    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_3

    .line 373
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_1

    .line 374
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    return v0

    .line 376
    :cond_1
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_2

    const/16 v0, 0x62

    goto :goto_1

    :cond_2
    const/16 v0, 0x33

    :goto_1
    return v0

    .line 378
    :cond_3
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_5

    .line 379
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_4

    const/16 v0, 0x64

    goto :goto_2

    :cond_4
    const/16 v0, 0x35

    :goto_2
    return v0

    .line 381
    :cond_5
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_6

    const/16 v0, 0x39

    goto :goto_3

    :cond_6
    const/16 v0, 0x31

    :goto_3
    return v0

    .line 383
    :cond_7
    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_b

    .line 384
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_9

    .line 385
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_8

    const/16 v0, 0x65

    goto :goto_4

    :cond_8
    const/16 v0, 0x36

    :goto_4
    return v0

    .line 387
    :cond_9
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_a

    const/16 v0, 0x61

    goto :goto_5

    :cond_a
    const/16 v0, 0x32

    :goto_5
    return v0

    .line 389
    :cond_b
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_d

    .line 390
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_c

    const/16 v0, 0x63

    goto :goto_6

    :cond_c
    const/16 v0, 0x34

    :goto_6
    return v0

    .line 392
    :cond_d
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_e

    const/16 v0, 0x38

    goto :goto_7

    :cond_e
    const/16 v0, 0x30

    :goto_7
    return v0

    .line 369
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length-srcPos<4: src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src.length>8: src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static binaryToInt([ZIIII)I
    .locals 6
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # I
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .line 916
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 917
    :cond_1
    return p2

    .line 919
    :cond_2
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    .line 922
    move v0, p2

    .line 923
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_3

    .line 924
    add-int v2, v1, p3

    .line 925
    .local v2, "shift":I
    add-int v3, v1, p1

    aget-boolean v3, p0, v3

    shl-int/2addr v3, v2

    .line 926
    .local v3, "bits":I
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    .line 927
    .local v4, "mask":I
    not-int v5, v4

    and-int/2addr v5, v0

    or-int v0, v5, v3

    .line 923
    .end local v2    # "shift":I
    .end local v3    # "bits":I
    .end local v4    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 929
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 920
    .end local v0    # "out":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+dstPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static binaryToLong([ZIJII)J
    .locals 13
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nBools"    # I

    .line 883
    move-object v0, p0

    move/from16 v1, p5

    array-length v2, v0

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez v1, :cond_2

    .line 884
    :cond_1
    return-wide p2

    .line 886
    :cond_2
    add-int/lit8 v2, v1, -0x1

    add-int v2, v2, p4

    const/16 v3, 0x40

    if-ge v2, v3, :cond_5

    .line 889
    move-wide v2, p2

    .line 890
    .local v2, "out":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 891
    add-int v5, v4, p4

    .line 892
    .local v5, "shift":I
    add-int v6, v4, p1

    aget-boolean v6, v0, v6

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_3

    move-wide v9, v7

    goto :goto_1

    :cond_3
    const-wide/16 v9, 0x0

    :goto_1
    shl-long/2addr v9, v5

    .line 893
    .local v9, "bits":J
    shl-long v6, v7, v5

    .line 894
    .local v6, "mask":J
    not-long v11, v6

    and-long/2addr v11, v2

    or-long v2, v11, v9

    .line 890
    .end local v5    # "shift":I
    .end local v6    # "mask":J
    .end local v9    # "bits":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 896
    .end local v4    # "i":I
    :cond_4
    return-wide v2

    .line 887
    .end local v2    # "out":J
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "nBools-1+dstPos is greater or equal to than 64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static binaryToShort([ZISII)S
    .locals 6
    .param p0, "src"    # [Z
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # S
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .line 949
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 950
    :cond_1
    return p2

    .line 952
    :cond_2
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 955
    move v0, p2

    .line 956
    .local v0, "out":S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_3

    .line 957
    add-int v2, v1, p3

    .line 958
    .local v2, "shift":I
    add-int v3, v1, p1

    aget-boolean v3, p0, v3

    shl-int/2addr v3, v2

    .line 959
    .local v3, "bits":I
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    .line 960
    .local v4, "mask":I
    not-int v5, v4

    and-int/2addr v5, v0

    or-int/2addr v5, v3

    int-to-short v0, v5

    .line 956
    .end local v2    # "shift":I
    .end local v3    # "bits":I
    .end local v4    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 962
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 953
    .end local v0    # "out":S
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+dstPos is greater or equal to than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToInt([BIIII)I
    .locals 6
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # I
    .param p3, "dstPos"    # I
    .param p4, "nBytes"    # I

    .line 694
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 695
    :cond_1
    return p2

    .line 697
    :cond_2
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    .line 700
    move v0, p2

    .line 701
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_3

    .line 702
    mul-int/lit8 v2, v1, 0x8

    add-int/2addr v2, p3

    .line 703
    .local v2, "shift":I
    add-int v3, v1, p1

    aget-byte v3, p0, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    shl-int/2addr v3, v2

    .line 704
    .local v3, "bits":I
    shl-int/2addr v4, v2

    .line 705
    .local v4, "mask":I
    not-int v5, v4

    and-int/2addr v5, v0

    or-int v0, v5, v3

    .line 701
    .end local v2    # "shift":I
    .end local v3    # "bits":I
    .end local v4    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 707
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 698
    .end local v0    # "out":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nBytes-1)*8+dstPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToLong([BIJII)J
    .locals 10
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nBytes"    # I

    .line 661
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    .line 662
    :cond_1
    return-wide p2

    .line 664
    :cond_2
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_4

    .line 667
    move-wide v0, p2

    .line 668
    .local v0, "out":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_3

    .line 669
    mul-int/lit8 v3, v2, 0x8

    add-int/2addr v3, p4

    .line 670
    .local v3, "shift":I
    add-int v4, v2, p1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-long/2addr v4, v3

    .line 671
    .local v4, "bits":J
    shl-long/2addr v6, v3

    .line 672
    .local v6, "mask":J
    not-long v8, v6

    and-long/2addr v8, v0

    or-long v0, v8, v4

    .line 668
    .end local v3    # "shift":I
    .end local v4    # "bits":J
    .end local v6    # "mask":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    .end local v2    # "i":I
    :cond_3
    return-wide v0

    .line 665
    .end local v0    # "out":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nBytes-1)*8+dstPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToShort([BISII)S
    .locals 6
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # S
    .param p3, "dstPos"    # I
    .param p4, "nBytes"    # I

    .line 727
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 728
    :cond_1
    return p2

    .line 730
    :cond_2
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 733
    move v0, p2

    .line 734
    .local v0, "out":S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_3

    .line 735
    mul-int/lit8 v2, v1, 0x8

    add-int/2addr v2, p3

    .line 736
    .local v2, "shift":I
    add-int v3, v1, p1

    aget-byte v3, p0, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    shl-int/2addr v3, v2

    .line 737
    .local v3, "bits":I
    shl-int/2addr v4, v2

    .line 738
    .local v4, "mask":I
    not-int v5, v4

    and-int/2addr v5, v0

    or-int/2addr v5, v3

    int-to-short v0, v5

    .line 734
    .end local v2    # "shift":I
    .end local v3    # "bits":I
    .end local v4    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 731
    .end local v0    # "out":S
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nBytes-1)*8+dstPos is greater or equal to than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToUuid([BI)Ljava/util/UUID;
    .locals 9
    .param p0, "src"    # [B
    .param p1, "srcPos"    # I

    .line 1487
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1490
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcn/xutils/commons/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide v1

    add-int/lit8 v4, p1, 0x8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcn/xutils/commons/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0

    .line 1488
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need at least 16 bytes for UUID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteToBinary(BI[ZII)[Z
    .locals 5
    .param p0, "src"    # B
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .line 1434
    if-nez p4, :cond_0

    .line 1435
    return-object p2

    .line 1437
    :cond_0
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 1440
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 1441
    add-int v1, v0, p1

    .line 1442
    .local v1, "shift":I
    add-int v2, p3, v0

    shr-int v3, p0, v1

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, p2, v2

    .line 1440
    .end local v1    # "shift":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1444
    .end local v0    # "i":I
    :cond_2
    return-object p2

    .line 1438
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+srcPos is greater or equal to than 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteToHex(BILjava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "src"    # B
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # Ljava/lang/String;
    .param p3, "dstPos"    # I
    .param p4, "nHexs"    # I

    .line 1305
    if-nez p4, :cond_0

    .line 1306
    return-object p2

    .line 1308
    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1312
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1313
    .local v1, "append":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_2

    .line 1314
    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, p1

    .line 1315
    .local v3, "shift":I
    shr-int v4, p0, v3

    and-int/lit8 v4, v4, 0xf

    .line 1316
    .local v4, "bits":I
    add-int v5, p3, v2

    if-ne v5, v1, :cond_1

    .line 1317
    add-int/lit8 v1, v1, 0x1

    .line 1318
    invoke-static {v4}, Lcn/xutils/commons/Conversion;->intToHexDigit(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1320
    :cond_1
    add-int v5, p3, v2

    invoke-static {v4}, Lcn/xutils/commons/Conversion;->intToHexDigit(I)C

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1313
    .end local v3    # "shift":I
    .end local v4    # "bits":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1323
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1309
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "append":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+srcPos is greater or equal to than 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexDigitMsb0ToBinary(C)[Z
    .locals 3
    .param p0, "hexDigit"    # C

    .line 227
    sparse-switch p0, :sswitch_data_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :sswitch_0
    sget-object v0, Lcn/xutils/commons/Conversion;->TTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 262
    :sswitch_1
    sget-object v0, Lcn/xutils/commons/Conversion;->TTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 259
    :sswitch_2
    sget-object v0, Lcn/xutils/commons/Conversion;->TTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 256
    :sswitch_3
    sget-object v0, Lcn/xutils/commons/Conversion;->TTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 253
    :sswitch_4
    sget-object v0, Lcn/xutils/commons/Conversion;->TFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 250
    :sswitch_5
    sget-object v0, Lcn/xutils/commons/Conversion;->TFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 247
    :sswitch_6
    sget-object v0, Lcn/xutils/commons/Conversion;->TFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 245
    :sswitch_7
    sget-object v0, Lcn/xutils/commons/Conversion;->TFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 243
    :sswitch_8
    sget-object v0, Lcn/xutils/commons/Conversion;->FTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 241
    :sswitch_9
    sget-object v0, Lcn/xutils/commons/Conversion;->FTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 239
    :sswitch_a
    sget-object v0, Lcn/xutils/commons/Conversion;->FTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 237
    :sswitch_b
    sget-object v0, Lcn/xutils/commons/Conversion;->FTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 235
    :sswitch_c
    sget-object v0, Lcn/xutils/commons/Conversion;->FFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 233
    :sswitch_d
    sget-object v0, Lcn/xutils/commons/Conversion;->FFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 231
    :sswitch_e
    sget-object v0, Lcn/xutils/commons/Conversion;->FFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 229
    :sswitch_f
    sget-object v0, Lcn/xutils/commons/Conversion;->FFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_f
        0x31 -> :sswitch_e
        0x32 -> :sswitch_d
        0x33 -> :sswitch_c
        0x34 -> :sswitch_b
        0x35 -> :sswitch_a
        0x36 -> :sswitch_9
        0x37 -> :sswitch_8
        0x38 -> :sswitch_7
        0x39 -> :sswitch_6
        0x41 -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_3
        0x44 -> :sswitch_2
        0x45 -> :sswitch_1
        0x46 -> :sswitch_0
        0x61 -> :sswitch_5
        0x62 -> :sswitch_4
        0x63 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method public static hexDigitMsb0ToInt(C)I
    .locals 3
    .param p0, "hexDigit"    # C

    .line 113
    sparse-switch p0, :sswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :sswitch_0
    const/16 v0, 0xf

    return v0

    .line 148
    :sswitch_1
    const/4 v0, 0x7

    return v0

    .line 145
    :sswitch_2
    const/16 v0, 0xb

    return v0

    .line 142
    :sswitch_3
    const/4 v0, 0x3

    return v0

    .line 139
    :sswitch_4
    const/16 v0, 0xd

    return v0

    .line 136
    :sswitch_5
    const/4 v0, 0x5

    return v0

    .line 133
    :sswitch_6
    const/16 v0, 0x9

    return v0

    .line 131
    :sswitch_7
    const/4 v0, 0x1

    return v0

    .line 129
    :sswitch_8
    const/16 v0, 0xe

    return v0

    .line 127
    :sswitch_9
    const/4 v0, 0x6

    return v0

    .line 125
    :sswitch_a
    const/16 v0, 0xa

    return v0

    .line 123
    :sswitch_b
    const/4 v0, 0x2

    return v0

    .line 121
    :sswitch_c
    const/16 v0, 0xc

    return v0

    .line 119
    :sswitch_d
    const/4 v0, 0x4

    return v0

    .line 117
    :sswitch_e
    const/16 v0, 0x8

    return v0

    .line 115
    :sswitch_f
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_f
        0x31 -> :sswitch_e
        0x32 -> :sswitch_d
        0x33 -> :sswitch_c
        0x34 -> :sswitch_b
        0x35 -> :sswitch_a
        0x36 -> :sswitch_9
        0x37 -> :sswitch_8
        0x38 -> :sswitch_7
        0x39 -> :sswitch_6
        0x41 -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_3
        0x44 -> :sswitch_2
        0x45 -> :sswitch_1
        0x46 -> :sswitch_0
        0x61 -> :sswitch_5
        0x62 -> :sswitch_4
        0x63 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method public static hexDigitToBinary(C)[Z
    .locals 3
    .param p0, "hexDigit"    # C

    .line 170
    sparse-switch p0, :sswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot interpret \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as a hexadecimal digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :sswitch_0
    sget-object v0, Lcn/xutils/commons/Conversion;->TTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 205
    :sswitch_1
    sget-object v0, Lcn/xutils/commons/Conversion;->FTTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 202
    :sswitch_2
    sget-object v0, Lcn/xutils/commons/Conversion;->TFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 199
    :sswitch_3
    sget-object v0, Lcn/xutils/commons/Conversion;->FFTT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 196
    :sswitch_4
    sget-object v0, Lcn/xutils/commons/Conversion;->TTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 193
    :sswitch_5
    sget-object v0, Lcn/xutils/commons/Conversion;->FTFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 190
    :sswitch_6
    sget-object v0, Lcn/xutils/commons/Conversion;->TFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 188
    :sswitch_7
    sget-object v0, Lcn/xutils/commons/Conversion;->FFFT:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 186
    :sswitch_8
    sget-object v0, Lcn/xutils/commons/Conversion;->TTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 184
    :sswitch_9
    sget-object v0, Lcn/xutils/commons/Conversion;->FTTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 182
    :sswitch_a
    sget-object v0, Lcn/xutils/commons/Conversion;->TFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 180
    :sswitch_b
    sget-object v0, Lcn/xutils/commons/Conversion;->FFTF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 178
    :sswitch_c
    sget-object v0, Lcn/xutils/commons/Conversion;->TTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 176
    :sswitch_d
    sget-object v0, Lcn/xutils/commons/Conversion;->FTFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 174
    :sswitch_e
    sget-object v0, Lcn/xutils/commons/Conversion;->TFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    .line 172
    :sswitch_f
    sget-object v0, Lcn/xutils/commons/Conversion;->FFFF:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_f
        0x31 -> :sswitch_e
        0x32 -> :sswitch_d
        0x33 -> :sswitch_c
        0x34 -> :sswitch_b
        0x35 -> :sswitch_a
        0x36 -> :sswitch_9
        0x37 -> :sswitch_8
        0x38 -> :sswitch_7
        0x39 -> :sswitch_6
        0x41 -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_3
        0x44 -> :sswitch_2
        0x45 -> :sswitch_1
        0x46 -> :sswitch_0
        0x61 -> :sswitch_5
        0x62 -> :sswitch_4
        0x63 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method public static hexDigitToInt(C)I
    .locals 4
    .param p0, "hexDigit"    # C

    .line 94
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 95
    .local v0, "digit":I
    if-ltz v0, :cond_0

    .line 98
    return v0

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot interpret \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' as a hexadecimal digit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hexToByte(Ljava/lang/String;IBII)B
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # B
    .param p3, "dstPos"    # I
    .param p4, "nHex"    # I

    .line 850
    if-nez p4, :cond_0

    .line 851
    return p2

    .line 853
    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 856
    move v0, p2

    .line 857
    .local v0, "out":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 858
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p3

    .line 859
    .local v2, "shift":I
    add-int v3, v1, p1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcn/xutils/commons/Conversion;->hexDigitToInt(C)I

    move-result v3

    const/16 v4, 0xf

    and-int/2addr v3, v4

    shl-int/2addr v3, v2

    .line 860
    .local v3, "bits":I
    shl-int/2addr v4, v2

    .line 861
    .local v4, "mask":I
    not-int v5, v4

    and-int/2addr v5, v0

    or-int/2addr v5, v3

    int-to-byte v0, v5

    .line 857
    .end local v2    # "shift":I
    .end local v3    # "bits":I
    .end local v4    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 863
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 854
    .end local v0    # "out":B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+dstPos is greater or equal to than 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexToInt(Ljava/lang/String;IIII)I
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # I
    .param p3, "dstPos"    # I
    .param p4, "nHex"    # I

    .line 788
    if-nez p4, :cond_0

    .line 789
    return p2

    .line 791
    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    .line 794
    move v0, p2

    .line 795
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 796
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p3

    .line 797
    .local v2, "shift":I
    add-int v3, v1, p1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcn/xutils/commons/Conversion;->hexDigitToInt(C)I

    move-result v3

    const/16 v4, 0xf

    and-int/2addr v3, v4

    shl-int/2addr v3, v2

    .line 798
    .local v3, "bits":I
    shl-int/2addr v4, v2

    .line 799
    .local v4, "mask":I
    not-int v5, v4

    and-int/2addr v5, v0

    or-int v0, v5, v3

    .line 795
    .end local v2    # "shift":I
    .end local v3    # "bits":I
    .end local v4    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 792
    .end local v0    # "out":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+dstPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexToLong(Ljava/lang/String;IJII)J
    .locals 10
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nHex"    # I

    .line 758
    if-nez p5, :cond_0

    .line 759
    return-wide p2

    .line 761
    :cond_0
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    .line 764
    move-wide v0, p2

    .line 765
    .local v0, "out":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_1

    .line 766
    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, p4

    .line 767
    .local v3, "shift":I
    add-int v4, v2, p1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcn/xutils/commons/Conversion;->hexDigitToInt(C)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0xf

    and-long/2addr v4, v6

    shl-long/2addr v4, v3

    .line 768
    .local v4, "bits":J
    shl-long/2addr v6, v3

    .line 769
    .local v6, "mask":J
    not-long v8, v6

    and-long/2addr v8, v0

    or-long v0, v8, v4

    .line 765
    .end local v3    # "shift":I
    .end local v4    # "bits":J
    .end local v6    # "mask":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 771
    .end local v2    # "i":I
    :cond_1
    return-wide v0

    .line 762
    .end local v0    # "out":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+dstPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexToShort(Ljava/lang/String;ISII)S
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # S
    .param p3, "dstPos"    # I
    .param p4, "nHex"    # I

    .line 819
    if-nez p4, :cond_0

    .line 820
    return p2

    .line 822
    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 825
    move v0, p2

    .line 826
    .local v0, "out":S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 827
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p3

    .line 828
    .local v2, "shift":I
    add-int v3, v1, p1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcn/xutils/commons/Conversion;->hexDigitToInt(C)I

    move-result v3

    const/16 v4, 0xf

    and-int/2addr v3, v4

    shl-int/2addr v3, v2

    .line 829
    .local v3, "bits":I
    shl-int/2addr v4, v2

    .line 830
    .local v4, "mask":I
    not-int v5, v4

    and-int/2addr v5, v0

    or-int/2addr v5, v3

    int-to-short v0, v5

    .line 826
    .end local v2    # "shift":I
    .end local v3    # "bits":I
    .end local v4    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 832
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 823
    .end local v0    # "out":S
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+dstPos is greater or equal to than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intArrayToLong([IIJII)J
    .locals 10
    .param p0, "src"    # [I
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nInts"    # I

    .line 562
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    .line 563
    :cond_1
    return-wide p2

    .line 565
    :cond_2
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_4

    .line 568
    move-wide v0, p2

    .line 569
    .local v0, "out":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_3

    .line 570
    mul-int/lit8 v3, v2, 0x20

    add-int/2addr v3, p4

    .line 571
    .local v3, "shift":I
    add-int v4, v2, p1

    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    shl-long/2addr v4, v3

    .line 572
    .local v4, "bits":J
    shl-long/2addr v6, v3

    .line 573
    .local v6, "mask":J
    not-long v8, v6

    and-long/2addr v8, v0

    or-long v0, v8, v4

    .line 569
    .end local v3    # "shift":I
    .end local v4    # "bits":J
    .end local v6    # "mask":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 575
    .end local v2    # "i":I
    :cond_3
    return-wide v0

    .line 566
    .end local v0    # "out":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nInts-1)*32+dstPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToBinary(II[ZII)[Z
    .locals 5
    .param p0, "src"    # I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .line 1373
    if-nez p4, :cond_0

    .line 1374
    return-object p2

    .line 1376
    :cond_0
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    .line 1379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 1380
    add-int v1, v0, p1

    .line 1381
    .local v1, "shift":I
    add-int v2, p3, v0

    shr-int v3, p0, v1

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, p2, v2

    .line 1379
    .end local v1    # "shift":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1383
    .end local v0    # "i":I
    :cond_2
    return-object p2

    .line 1377
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+srcPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToByteArray(II[BII)[B
    .locals 4
    .param p0, "src"    # I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstPos"    # I
    .param p4, "nBytes"    # I

    .line 1135
    if-nez p4, :cond_0

    .line 1136
    return-object p2

    .line 1138
    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    .line 1141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 1142
    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p1

    .line 1143
    .local v1, "shift":I
    add-int v2, p3, v0

    shr-int v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 1141
    .end local v1    # "shift":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1145
    .end local v0    # "i":I
    :cond_1
    return-object p2

    .line 1139
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nBytes-1)*8+srcPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToHex(IILjava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "src"    # I
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # Ljava/lang/String;
    .param p3, "dstPos"    # I
    .param p4, "nHexs"    # I

    .line 1231
    if-nez p4, :cond_0

    .line 1232
    return-object p2

    .line 1234
    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1238
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1239
    .local v1, "append":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_2

    .line 1240
    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, p1

    .line 1241
    .local v3, "shift":I
    shr-int v4, p0, v3

    and-int/lit8 v4, v4, 0xf

    .line 1242
    .local v4, "bits":I
    add-int v5, p3, v2

    if-ne v5, v1, :cond_1

    .line 1243
    add-int/lit8 v1, v1, 0x1

    .line 1244
    invoke-static {v4}, Lcn/xutils/commons/Conversion;->intToHexDigit(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1246
    :cond_1
    add-int v5, p3, v2

    invoke-static {v4}, Lcn/xutils/commons/Conversion;->intToHexDigit(I)C

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1239
    .end local v3    # "shift":I
    .end local v4    # "bits":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1249
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1235
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "append":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+srcPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToHexDigit(I)C
    .locals 4
    .param p0, "nibble"    # I

    .line 482
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    .line 483
    .local v0, "c":C
    if-eqz v0, :cond_0

    .line 486
    return v0

    .line 484
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nibble value not between 0 and 15: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static intToHexDigitMsb0(I)C
    .locals 3
    .param p0, "nibble"    # I

    .line 507
    packed-switch p0, :pswitch_data_0

    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nibble value not between 0 and 15: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :pswitch_0
    const/16 v0, 0x66

    return v0

    .line 537
    :pswitch_1
    const/16 v0, 0x37

    return v0

    .line 535
    :pswitch_2
    const/16 v0, 0x62

    return v0

    .line 533
    :pswitch_3
    const/16 v0, 0x33

    return v0

    .line 531
    :pswitch_4
    const/16 v0, 0x64

    return v0

    .line 529
    :pswitch_5
    const/16 v0, 0x35

    return v0

    .line 527
    :pswitch_6
    const/16 v0, 0x39

    return v0

    .line 525
    :pswitch_7
    const/16 v0, 0x31

    return v0

    .line 523
    :pswitch_8
    const/16 v0, 0x65

    return v0

    .line 521
    :pswitch_9
    const/16 v0, 0x36

    return v0

    .line 519
    :pswitch_a
    const/16 v0, 0x61

    return v0

    .line 517
    :pswitch_b
    const/16 v0, 0x32

    return v0

    .line 515
    :pswitch_c
    const/16 v0, 0x63

    return v0

    .line 513
    :pswitch_d
    const/16 v0, 0x34

    return v0

    .line 511
    :pswitch_e
    const/16 v0, 0x38

    return v0

    .line 509
    :pswitch_f
    const/16 v0, 0x30

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static intToShortArray(II[SII)[S
    .locals 5
    .param p0, "src"    # I
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstPos"    # I
    .param p4, "nShorts"    # I

    .line 1075
    if-nez p4, :cond_0

    .line 1076
    return-object p2

    .line 1078
    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    .line 1081
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 1082
    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p1

    .line 1083
    .local v1, "shift":I
    add-int v2, p3, v0

    const v3, 0xffff

    shr-int v4, p0, v1

    and-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p2, v2

    .line 1081
    .end local v1    # "shift":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1085
    .end local v0    # "i":I
    :cond_1
    return-object p2

    .line 1079
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nShorts-1)*16+srcPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longToBinary(JI[ZII)[Z
    .locals 7
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dst"    # [Z
    .param p4, "dstPos"    # I
    .param p5, "nBools"    # I

    .line 1343
    if-nez p5, :cond_0

    .line 1344
    return-object p3

    .line 1346
    :cond_0
    add-int/lit8 v0, p5, -0x1

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3

    .line 1349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_2

    .line 1350
    add-int v1, v0, p2

    .line 1351
    .local v1, "shift":I
    add-int v2, p4, v0

    const-wide/16 v3, 0x1

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, p3, v2

    .line 1349
    .end local v1    # "shift":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1353
    .end local v0    # "i":I
    :cond_2
    return-object p3

    .line 1347
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+srcPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longToByteArray(JI[BII)[B
    .locals 7
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dst"    # [B
    .param p4, "dstPos"    # I
    .param p5, "nBytes"    # I

    .line 1105
    if-nez p5, :cond_0

    .line 1106
    return-object p3

    .line 1108
    :cond_0
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    .line 1111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_1

    .line 1112
    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p2

    .line 1113
    .local v1, "shift":I
    add-int v2, p4, v0

    const-wide/16 v3, 0xff

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 1111
    .end local v1    # "shift":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1115
    .end local v0    # "i":I
    :cond_1
    return-object p3

    .line 1109
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nBytes-1)*8+srcPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longToHex(JILjava/lang/String;II)Ljava/lang/String;
    .locals 8
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dstInit"    # Ljava/lang/String;
    .param p4, "dstPos"    # I
    .param p5, "nHexs"    # I

    .line 1194
    if-nez p5, :cond_0

    .line 1195
    return-object p3

    .line 1197
    :cond_0
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1202
    .local v1, "append":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_2

    .line 1203
    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, p2

    .line 1204
    .local v3, "shift":I
    const-wide/16 v4, 0xf

    shr-long v6, p0, v3

    and-long/2addr v4, v6

    long-to-int v4, v4

    .line 1205
    .local v4, "bits":I
    add-int v5, p4, v2

    if-ne v5, v1, :cond_1

    .line 1206
    add-int/lit8 v1, v1, 0x1

    .line 1207
    invoke-static {v4}, Lcn/xutils/commons/Conversion;->intToHexDigit(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1209
    :cond_1
    add-int v5, p4, v2

    invoke-static {v4}, Lcn/xutils/commons/Conversion;->intToHexDigit(I)C

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1202
    .end local v3    # "shift":I
    .end local v4    # "bits":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1212
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1198
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "append":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+srcPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longToIntArray(JI[III)[I
    .locals 7
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dst"    # [I
    .param p4, "dstPos"    # I
    .param p5, "nInts"    # I

    .line 1015
    if-nez p5, :cond_0

    .line 1016
    return-object p3

    .line 1018
    :cond_0
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    .line 1021
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_1

    .line 1022
    mul-int/lit8 v1, v0, 0x20

    add-int/2addr v1, p2

    .line 1023
    .local v1, "shift":I
    add-int v2, p4, v0

    const-wide/16 v3, -0x1

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    long-to-int v3, v3

    aput v3, p3, v2

    .line 1021
    .end local v1    # "shift":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1025
    .end local v0    # "i":I
    :cond_1
    return-object p3

    .line 1019
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nInts-1)*32+srcPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longToShortArray(JI[SII)[S
    .locals 7
    .param p0, "src"    # J
    .param p2, "srcPos"    # I
    .param p3, "dst"    # [S
    .param p4, "dstPos"    # I
    .param p5, "nShorts"    # I

    .line 1045
    if-nez p5, :cond_0

    .line 1046
    return-object p3

    .line 1048
    :cond_0
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    .line 1051
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_1

    .line 1052
    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, p2

    .line 1053
    .local v1, "shift":I
    add-int v2, p4, v0

    const-wide/32 v3, 0xffff

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-short v3, v3

    aput-short v3, p3, v2

    .line 1051
    .end local v1    # "shift":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1055
    .end local v0    # "i":I
    :cond_1
    return-object p3

    .line 1049
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nShorts-1)*16+srcPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shortArrayToInt([SIIII)I
    .locals 6
    .param p0, "src"    # [S
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # I
    .param p3, "dstPos"    # I
    .param p4, "nShorts"    # I

    .line 628
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    .line 629
    :cond_1
    return p2

    .line 631
    :cond_2
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    .line 634
    move v0, p2

    .line 635
    .local v0, "out":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_3

    .line 636
    mul-int/lit8 v2, v1, 0x10

    add-int/2addr v2, p3

    .line 637
    .local v2, "shift":I
    add-int v3, v1, p1

    aget-short v3, p0, v3

    const v4, 0xffff

    and-int/2addr v3, v4

    shl-int/2addr v3, v2

    .line 638
    .local v3, "bits":I
    shl-int/2addr v4, v2

    .line 639
    .local v4, "mask":I
    not-int v5, v4

    and-int/2addr v5, v0

    or-int v0, v5, v3

    .line 635
    .end local v2    # "shift":I
    .end local v3    # "bits":I
    .end local v4    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 641
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 632
    .end local v0    # "out":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nShorts-1)*16+dstPos is greater or equal to than 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shortArrayToLong([SIJII)J
    .locals 10
    .param p0, "src"    # [S
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # J
    .param p4, "dstPos"    # I
    .param p5, "nShorts"    # I

    .line 595
    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    .line 596
    :cond_1
    return-wide p2

    .line 598
    :cond_2
    add-int/lit8 v0, p5, -0x1

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_4

    .line 601
    move-wide v0, p2

    .line 602
    .local v0, "out":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_3

    .line 603
    mul-int/lit8 v3, v2, 0x10

    add-int/2addr v3, p4

    .line 604
    .local v3, "shift":I
    add-int v4, v2, p1

    aget-short v4, p0, v4

    int-to-long v4, v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    shl-long/2addr v4, v3

    .line 605
    .local v4, "bits":J
    shl-long/2addr v6, v3

    .line 606
    .local v6, "mask":J
    not-long v8, v6

    and-long/2addr v8, v0

    or-long v0, v8, v4

    .line 602
    .end local v3    # "shift":I
    .end local v4    # "bits":J
    .end local v6    # "mask":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    .end local v2    # "i":I
    :cond_3
    return-wide v0

    .line 599
    .end local v0    # "out":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nShorts-1)*16+dstPos is greater or equal to than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shortToBinary(SI[ZII)[Z
    .locals 5
    .param p0, "src"    # S
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [Z
    .param p3, "dstPos"    # I
    .param p4, "nBools"    # I

    .line 1403
    if-nez p4, :cond_0

    .line 1404
    return-object p2

    .line 1406
    :cond_0
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 1409
    add-int/lit8 v0, p4, -0x1

    rsub-int/lit8 v1, p1, 0x10

    if-ge v0, v1, :cond_3

    .line 1410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 1411
    add-int v1, v0, p1

    .line 1412
    .local v1, "shift":I
    add-int v2, p3, v0

    shr-int v3, p0, v1

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, p2, v2

    .line 1410
    .end local v1    # "shift":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1414
    .end local v0    # "i":I
    :cond_2
    return-object p2

    .line 1409
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1407
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBools-1+srcPos is greater or equal to than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shortToByteArray(SI[BII)[B
    .locals 4
    .param p0, "src"    # S
    .param p1, "srcPos"    # I
    .param p2, "dst"    # [B
    .param p3, "dstPos"    # I
    .param p4, "nBytes"    # I

    .line 1165
    if-nez p4, :cond_0

    .line 1166
    return-object p2

    .line 1168
    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 1171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 1172
    mul-int/lit8 v1, v0, 0x8

    add-int/2addr v1, p1

    .line 1173
    .local v1, "shift":I
    add-int v2, p3, v0

    shr-int v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 1171
    .end local v1    # "shift":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1175
    .end local v0    # "i":I
    :cond_1
    return-object p2

    .line 1169
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nBytes-1)*8+srcPos is greater or equal to than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shortToHex(SILjava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "src"    # S
    .param p1, "srcPos"    # I
    .param p2, "dstInit"    # Ljava/lang/String;
    .param p3, "dstPos"    # I
    .param p4, "nHexs"    # I

    .line 1268
    if-nez p4, :cond_0

    .line 1269
    return-object p2

    .line 1271
    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1276
    .local v1, "append":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_2

    .line 1277
    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, p1

    .line 1278
    .local v3, "shift":I
    shr-int v4, p0, v3

    and-int/lit8 v4, v4, 0xf

    .line 1279
    .local v4, "bits":I
    add-int v5, p3, v2

    if-ne v5, v1, :cond_1

    .line 1280
    add-int/lit8 v1, v1, 0x1

    .line 1281
    invoke-static {v4}, Lcn/xutils/commons/Conversion;->intToHexDigit(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1283
    :cond_1
    add-int v5, p3, v2

    invoke-static {v4}, Lcn/xutils/commons/Conversion;->intToHexDigit(I)C

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1276
    .end local v3    # "shift":I
    .end local v4    # "bits":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1286
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1272
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "append":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(nHexs-1)*4+srcPos is greater or equal to than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static uuidToByteArray(Ljava/util/UUID;[BII)[B
    .locals 7
    .param p0, "src"    # Ljava/util/UUID;
    .param p1, "dst"    # [B
    .param p2, "dstPos"    # I
    .param p3, "nBytes"    # I

    .line 1462
    if-nez p3, :cond_0

    .line 1463
    return-object p1

    .line 1465
    :cond_0
    const/16 v0, 0x10

    if-gt p3, v0, :cond_2

    .line 1468
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v6, 0x8

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcn/xutils/commons/Conversion;->longToByteArray(JI[BII)[B

    .line 1469
    if-lt p3, v6, :cond_1

    .line 1470
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    const/4 v2, 0x0

    add-int/lit8 v4, p2, 0x8

    add-int/lit8 v5, p3, -0x8

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcn/xutils/commons/Conversion;->longToByteArray(JI[BII)[B

    .line 1472
    :cond_1
    return-object p1

    .line 1466
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBytes is greater than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
