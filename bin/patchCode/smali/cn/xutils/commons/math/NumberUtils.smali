.class public Lcn/xutils/commons/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_TWO:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_INT_MAX_VALUE:Ljava/lang/Long;

.field public static final LONG_INT_MIN_VALUE:Ljava/lang/Long;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 38
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 40
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcn/xutils/commons/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 44
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcn/xutils/commons/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 46
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcn/xutils/commons/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    .line 48
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcn/xutils/commons/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 50
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lcn/xutils/commons/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 52
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lcn/xutils/commons/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 54
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lcn/xutils/commons/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 56
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 58
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 60
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 62
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 64
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 66
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 72
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    .line 79
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->LONG_INT_MAX_VALUE:Ljava/lang/Long;

    .line 86
    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/math/NumberUtils;->LONG_INT_MIN_VALUE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static compare(BB)I
    .locals 1
    .param p0, "x"    # B
    .param p1, "y"    # B

    .line 1848
    sub-int v0, p0, p1

    return v0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1797
    if-ne p0, p1, :cond_0

    .line 1798
    const/4 v0, 0x0

    return v0

    .line 1800
    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static compare(JJ)I
    .locals 1
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1814
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 1815
    const/4 v0, 0x0

    return v0

    .line 1817
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static compare(SS)I
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 1831
    if-ne p0, p1, :cond_0

    .line 1832
    const/4 v0, 0x0

    return v0

    .line 1834
    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 1020
    if-nez p0, :cond_0

    .line 1021
    const/4 v0, 0x0

    return-object v0

    .line 1024
    :cond_0
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1025
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 979
    if-nez p0, :cond_0

    .line 980
    const/4 v0, 0x0

    return-object v0

    .line 982
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, "pos":I
    const/16 v1, 0xa

    .line 987
    .local v1, "radix":I
    const/4 v2, 0x0

    .line 988
    .local v2, "negate":Z
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 989
    .local v3, "char0":C
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    .line 990
    const/4 v2, 0x1

    .line 991
    const/4 v0, 0x1

    goto :goto_0

    .line 992
    :cond_1
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    .line 993
    const/4 v0, 0x1

    .line 995
    :cond_2
    :goto_0
    const-string v4, "0x"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "0X"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 998
    :cond_3
    const-string v4, "#"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 999
    const/16 v1, 0x10

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1001
    :cond_4
    const-string v4, "0"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    if-le v4, v5, :cond_6

    .line 1002
    const/16 v1, 0x8

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 996
    :cond_5
    :goto_1
    const/16 v1, 0x10

    .line 997
    add-int/lit8 v0, v0, 0x2

    .line 1006
    :cond_6
    :goto_2
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1007
    .local v4, "value":Ljava/math/BigInteger;
    if-eqz v2, :cond_7

    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_3

    :cond_7
    move-object v5, v4

    :goto_3
    return-object v5

    .line 983
    .end local v0    # "pos":I
    .end local v1    # "radix":I
    .end local v2    # "negate":Z
    .end local v3    # "char0":C
    .end local v4    # "value":Ljava/math/BigInteger;
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "An empty string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 925
    if-nez p0, :cond_0

    .line 926
    const/4 v0, 0x0

    return-object v0

    .line 928
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 909
    if-nez p0, :cond_0

    .line 910
    const/4 v0, 0x0

    return-object v0

    .line 912
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 943
    if-nez p0, :cond_0

    .line 944
    const/4 v0, 0x0

    return-object v0

    .line 947
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 962
    if-nez p0, :cond_0

    .line 963
    const/4 v0, 0x0

    return-object v0

    .line 965
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 21
    .param p0, "str"    # Ljava/lang/String;

    .line 662
    move-object/from16 v1, p0

    if-nez v1, :cond_0

    .line 663
    const/4 v0, 0x0

    return-object v0

    .line 665
    :cond_0
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 669
    const-string v0, "0X"

    const-string v2, "#"

    const-string v3, "0x"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 670
    .local v2, "hexPrefixes":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 671
    .local v3, "length":I
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v7

    .line 672
    .local v4, "offset":I
    :goto_1
    const/4 v5, 0x0

    .line 673
    .local v5, "pfxLen":I
    array-length v8, v2

    move v9, v0

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v2, v9

    .line 674
    .local v10, "pfx":Ljava/lang/String;
    invoke-virtual {v1, v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 675
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    .line 676
    goto :goto_3

    .line 673
    .end local v10    # "pfx":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 679
    :cond_4
    :goto_3
    if-lez v5, :cond_b

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "firstSigDigit":C
    move v6, v5

    .local v6, "i":I
    :goto_4
    if-ge v6, v3, :cond_6

    .line 682
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 683
    const/16 v7, 0x30

    if-eq v0, v7, :cond_5

    .line 684
    goto :goto_5

    .line 686
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 681
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 688
    .end local v6    # "i":I
    :cond_6
    :goto_5
    sub-int v6, v3, v5

    .line 689
    .local v6, "hexDigits":I
    const/16 v7, 0x10

    if-gt v6, v7, :cond_a

    const/16 v8, 0x37

    if-ne v6, v7, :cond_7

    if-le v0, v8, :cond_7

    goto :goto_7

    .line 692
    :cond_7
    const/16 v7, 0x8

    if-gt v6, v7, :cond_9

    if-ne v6, v7, :cond_8

    if-le v0, v8, :cond_8

    goto :goto_6

    .line 695
    :cond_8
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 693
    :cond_9
    :goto_6
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    return-object v7

    .line 690
    :cond_a
    :goto_7
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    return-object v7

    .line 697
    .end local v0    # "firstSigDigit":C
    .end local v6    # "hexDigits":I
    :cond_b
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 701
    .local v8, "lastChar":C
    const/16 v9, 0x2e

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 702
    .local v10, "decPos":I
    const/16 v11, 0x65

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/16 v12, 0x45

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v11, v7

    .line 707
    .local v11, "expPos":I
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-nez v12, :cond_c

    if-eq v8, v9, :cond_c

    move v9, v7

    goto :goto_8

    :cond_c
    move v9, v0

    .line 708
    .local v9, "requestType":Z
    :goto_8
    const-string v12, " is not a valid number."

    const/4 v13, -0x1

    if-le v10, v13, :cond_10

    .line 709
    if-le v11, v13, :cond_e

    .line 710
    if-lt v11, v10, :cond_d

    if-gt v11, v3, :cond_d

    .line 713
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v1, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .local v14, "dec":Ljava/lang/String;
    goto :goto_a

    .line 711
    .end local v14    # "dec":Ljava/lang/String;
    :cond_d
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_e
    add-int/lit8 v14, v10, 0x1

    if-eqz v9, :cond_f

    add-int/lit8 v15, v3, -0x1

    goto :goto_9

    :cond_f
    move v15, v3

    :goto_9
    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 718
    .restart local v14    # "dec":Ljava/lang/String;
    :goto_a
    invoke-static {v1, v10}, Lcn/xutils/commons/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .local v15, "mant":Ljava/lang/String;
    goto :goto_d

    .line 720
    .end local v14    # "dec":Ljava/lang/String;
    .end local v15    # "mant":Ljava/lang/String;
    :cond_10
    if-le v11, v13, :cond_12

    .line 721
    if-gt v11, v3, :cond_11

    .line 724
    invoke-static {v1, v11}, Lcn/xutils/commons/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    .local v14, "mant":Ljava/lang/String;
    goto :goto_c

    .line 722
    .end local v14    # "mant":Ljava/lang/String;
    :cond_11
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_12
    if-eqz v9, :cond_13

    add-int/lit8 v14, v3, -0x1

    goto :goto_b

    :cond_13
    move v14, v3

    :goto_b
    invoke-static {v1, v14}, Lcn/xutils/commons/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    .line 729
    .restart local v15    # "mant":Ljava/lang/String;
    :goto_c
    const/4 v14, 0x0

    .line 731
    .local v14, "dec":Ljava/lang/String;
    :goto_d
    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    if-eqz v9, :cond_1c

    .line 732
    if-le v11, v13, :cond_14

    add-int/lit8 v13, v3, -0x1

    if-ge v11, v13, :cond_14

    .line 733
    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v1, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "exp":Ljava/lang/String;
    goto :goto_e

    .line 735
    .end local v7    # "exp":Ljava/lang/String;
    :cond_14
    const/4 v7, 0x0

    .line 738
    .restart local v7    # "exp":Ljava/lang/String;
    :goto_e
    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v1, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 739
    .local v13, "numeric":Ljava/lang/String;
    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_11

    .line 742
    :sswitch_0
    if-nez v14, :cond_17

    if-nez v7, :cond_17

    .line 744
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_15

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_15

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    invoke-static {v13}, Lcn/xutils/commons/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 746
    :cond_16
    :try_start_0
    invoke-static {v13}, Lcn/xutils/commons/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 747
    :catch_0
    move-exception v0

    .line 750
    invoke-static {v13}, Lcn/xutils/commons/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 753
    :cond_17
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :sswitch_1
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 758
    .local v0, "f":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v16

    if-nez v6, :cond_18

    invoke-static {v15, v14}, Lcn/xutils/commons/math/NumberUtils;->isZero(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_19

    .line 761
    :cond_18
    return-object v0

    .line 766
    .end local v0    # "f":Ljava/lang/Float;
    :cond_19
    goto :goto_f

    .line 764
    :catch_1
    move-exception v0

    .line 771
    :goto_f
    :sswitch_2
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 772
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v6

    if-nez v6, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    cmpl-double v6, v19, v17

    if-nez v6, :cond_1a

    invoke-static {v15, v14}, Lcn/xutils/commons/math/NumberUtils;->isZero(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v6, :cond_1b

    .line 773
    :cond_1a
    return-object v0

    .line 777
    .end local v0    # "d":Ljava/lang/Double;
    :cond_1b
    goto :goto_10

    .line 775
    :catch_2
    move-exception v0

    .line 779
    :goto_10
    :try_start_3
    invoke-static {v13}, Lcn/xutils/commons/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 780
    :catch_3
    move-exception v0

    .line 785
    :goto_11
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    .end local v7    # "exp":Ljava/lang/String;
    .end local v13    # "numeric":Ljava/lang/String;
    :cond_1c
    if-le v11, v13, :cond_1d

    add-int/lit8 v0, v3, -0x1

    if-ge v11, v0, :cond_1d

    .line 792
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .local v0, "exp":Ljava/lang/String;
    goto :goto_12

    .line 794
    .end local v0    # "exp":Ljava/lang/String;
    :cond_1d
    const/4 v0, 0x0

    move-object v6, v0

    .line 796
    .local v6, "exp":Ljava/lang/String;
    :goto_12
    if-nez v14, :cond_1e

    if-nez v6, :cond_1e

    .line 799
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    .line 800
    :catch_4
    move-exception v0

    .line 804
    :try_start_5
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    return-object v0

    .line 805
    :catch_5
    move-exception v0

    .line 808
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 813
    :cond_1e
    :try_start_6
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 814
    .local v0, "f":Ljava/lang/Float;
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    .line 815
    .local v7, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v12

    if-nez v12, :cond_20

    .line 816
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v12, v16

    if-nez v12, :cond_1f

    invoke-static {v15, v14}, Lcn/xutils/commons/math/NumberUtils;->isZero(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 817
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 818
    return-object v0

    .line 820
    :cond_20
    invoke-virtual {v7}, Ljava/lang/Double;->isInfinite()Z

    move-result v12

    if-nez v12, :cond_23

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpl-double v12, v12, v17

    if-nez v12, :cond_21

    invoke-static {v15, v14}, Lcn/xutils/commons/math/NumberUtils;->isZero(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 821
    :cond_21
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v12

    .line 822
    .local v12, "b":Ljava/math/BigDecimal;
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v13
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    if-nez v13, :cond_22

    .line 823
    return-object v7

    .line 825
    :cond_22
    return-object v12

    .line 829
    .end local v0    # "f":Ljava/lang/Float;
    .end local v7    # "d":Ljava/lang/Double;
    .end local v12    # "b":Ljava/math/BigDecimal;
    :cond_23
    goto :goto_13

    .line 827
    :catch_6
    move-exception v0

    .line 830
    :goto_13
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 666
    .end local v2    # "hexPrefixes":[Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "offset":I
    .end local v5    # "pfxLen":I
    .end local v6    # "exp":Ljava/lang/String;
    .end local v8    # "lastChar":C
    .end local v9    # "requestType":Z
    .end local v10    # "decPos":I
    .end local v11    # "expPos":I
    .end local v14    # "dec":Ljava/lang/String;
    .end local v15    # "mant":Ljava/lang/String;
    :cond_24
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v2, "A blank string is not a valid number"

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4c -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method private static getMantissa(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stopPos"    # I

    .line 843
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 844
    .local v1, "firstChar":C
    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 846
    .local v2, "hasSign":Z
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 888
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 889
    return v0

    .line 891
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 892
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    .line 893
    const/4 v0, 0x0

    return v0

    .line 891
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 896
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static isCreatable(Ljava/lang/String;)Z
    .locals 17
    .param p0, "str"    # Ljava/lang/String;

    .line 1623
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1624
    return v1

    .line 1626
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1627
    .local v0, "chars":[C
    array-length v2, v0

    .line 1628
    .local v2, "sz":I
    const/4 v3, 0x0

    .line 1629
    .local v3, "hasExp":Z
    const/4 v4, 0x0

    .line 1630
    .local v4, "hasDecPoint":Z
    const/4 v5, 0x0

    .line 1631
    .local v5, "allowSigns":Z
    const/4 v6, 0x0

    .line 1633
    .local v6, "foundDigit":Z
    aget-char v7, v0, v1

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    const/4 v10, 0x1

    if-eq v7, v9, :cond_2

    aget-char v7, v0, v1

    if-ne v7, v8, :cond_1

    goto :goto_0

    :cond_1
    move v7, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v10

    .line 1634
    .local v7, "start":I
    :goto_1
    add-int/lit8 v11, v7, 0x1

    const/16 v12, 0x46

    const/16 v13, 0x66

    const/16 v14, 0x39

    const/16 v15, 0x2e

    const/16 v9, 0x30

    if-le v2, v11, :cond_e

    aget-char v11, v0, v7

    if-ne v11, v9, :cond_e

    move-object/from16 v11, p0

    invoke-static {v11, v15}, Lcn/xutils/commons/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v16

    if-nez v16, :cond_f

    .line 1635
    add-int/lit8 v16, v7, 0x1

    aget-char v8, v0, v16

    const/16 v15, 0x78

    if-eq v8, v15, :cond_7

    add-int/lit8 v8, v7, 0x1

    aget-char v8, v0, v8

    const/16 v15, 0x58

    if-ne v8, v15, :cond_3

    goto :goto_4

    .line 1650
    :cond_3
    add-int/lit8 v8, v7, 0x1

    aget-char v8, v0, v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1652
    add-int/lit8 v8, v7, 0x1

    .line 1653
    .local v8, "i":I
    :goto_2
    array-length v12, v0

    if-ge v8, v12, :cond_6

    .line 1654
    aget-char v12, v0, v8

    if-lt v12, v9, :cond_5

    aget-char v12, v0, v8

    const/16 v13, 0x37

    if-le v12, v13, :cond_4

    goto :goto_3

    .line 1653
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1655
    :cond_5
    :goto_3
    return v1

    .line 1658
    :cond_6
    return v10

    .line 1636
    .end local v8    # "i":I
    :cond_7
    :goto_4
    add-int/lit8 v8, v7, 0x2

    .line 1637
    .restart local v8    # "i":I
    if-ne v8, v2, :cond_8

    .line 1638
    return v1

    .line 1641
    :cond_8
    :goto_5
    array-length v15, v0

    if-ge v8, v15, :cond_d

    .line 1642
    aget-char v15, v0, v8

    if-lt v15, v9, :cond_9

    aget-char v15, v0, v8

    if-le v15, v14, :cond_b

    :cond_9
    aget-char v15, v0, v8

    const/16 v14, 0x61

    if-lt v15, v14, :cond_a

    aget-char v14, v0, v8

    if-le v14, v13, :cond_b

    :cond_a
    aget-char v14, v0, v8

    const/16 v15, 0x41

    if-lt v14, v15, :cond_c

    aget-char v14, v0, v8

    if-le v14, v12, :cond_b

    goto :goto_6

    .line 1641
    :cond_b
    add-int/lit8 v8, v8, 0x1

    const/16 v14, 0x39

    goto :goto_5

    .line 1645
    :cond_c
    :goto_6
    return v1

    .line 1648
    :cond_d
    return v10

    .line 1634
    .end local v8    # "i":I
    :cond_e
    move-object/from16 v11, p0

    .line 1661
    :cond_f
    add-int/lit8 v2, v2, -0x1

    .line 1663
    move v8, v7

    .line 1666
    .restart local v8    # "i":I
    :goto_7
    const/16 v14, 0x45

    const/16 v15, 0x65

    if-lt v8, v2, :cond_1e

    add-int/lit8 v12, v2, 0x1

    if-ge v8, v12, :cond_10

    if-eqz v5, :cond_10

    if-nez v6, :cond_10

    const/16 v12, 0x46

    goto :goto_b

    .line 1699
    :cond_10
    array-length v12, v0

    if-ge v8, v12, :cond_1c

    .line 1700
    aget-char v12, v0, v8

    if-lt v12, v9, :cond_11

    aget-char v9, v0, v8

    const/16 v12, 0x39

    if-gt v9, v12, :cond_11

    .line 1702
    return v10

    .line 1704
    :cond_11
    aget-char v9, v0, v8

    if-eq v9, v15, :cond_1b

    aget-char v9, v0, v8

    if-ne v9, v14, :cond_12

    goto :goto_a

    .line 1708
    :cond_12
    aget-char v9, v0, v8

    const/16 v12, 0x2e

    if-ne v9, v12, :cond_15

    .line 1709
    if-nez v4, :cond_14

    if-eqz v3, :cond_13

    goto :goto_8

    .line 1714
    :cond_13
    return v6

    .line 1711
    :cond_14
    :goto_8
    return v1

    .line 1716
    :cond_15
    if-nez v5, :cond_17

    aget-char v9, v0, v8

    const/16 v12, 0x64

    if-eq v9, v12, :cond_16

    aget-char v9, v0, v8

    const/16 v12, 0x44

    if-eq v9, v12, :cond_16

    aget-char v9, v0, v8

    if-eq v9, v13, :cond_16

    aget-char v9, v0, v8

    const/16 v12, 0x46

    if-ne v9, v12, :cond_17

    .line 1721
    :cond_16
    return v6

    .line 1723
    :cond_17
    aget-char v9, v0, v8

    const/16 v12, 0x6c

    if-eq v9, v12, :cond_19

    aget-char v9, v0, v8

    const/16 v12, 0x4c

    if-ne v9, v12, :cond_18

    goto :goto_9

    .line 1729
    :cond_18
    return v1

    .line 1726
    :cond_19
    :goto_9
    if-eqz v6, :cond_1a

    if-nez v3, :cond_1a

    if-nez v4, :cond_1a

    move v1, v10

    :cond_1a
    return v1

    .line 1706
    :cond_1b
    :goto_a
    return v1

    .line 1733
    :cond_1c
    if-nez v5, :cond_1d

    if-eqz v6, :cond_1d

    move v1, v10

    :cond_1d
    return v1

    .line 1667
    :cond_1e
    :goto_b
    aget-char v10, v0, v8

    if-lt v10, v9, :cond_1f

    aget-char v10, v0, v8

    const/16 v9, 0x39

    if-gt v10, v9, :cond_20

    .line 1668
    const/4 v6, 0x1

    .line 1669
    const/4 v5, 0x0

    const/16 v9, 0x2e

    const/16 v14, 0x2b

    const/16 v15, 0x2d

    goto :goto_f

    .line 1667
    :cond_1f
    const/16 v9, 0x39

    .line 1671
    :cond_20
    aget-char v10, v0, v8

    const/16 v9, 0x2e

    if-ne v10, v9, :cond_23

    .line 1672
    if-nez v4, :cond_22

    if-eqz v3, :cond_21

    goto :goto_c

    .line 1676
    :cond_21
    const/4 v4, 0x1

    const/16 v14, 0x2b

    const/16 v15, 0x2d

    goto :goto_f

    .line 1674
    :cond_22
    :goto_c
    return v1

    .line 1677
    :cond_23
    aget-char v10, v0, v8

    if-eq v10, v15, :cond_28

    aget-char v10, v0, v8

    if-ne v10, v14, :cond_24

    const/16 v14, 0x2b

    const/16 v15, 0x2d

    goto :goto_e

    .line 1688
    :cond_24
    aget-char v10, v0, v8

    const/16 v14, 0x2b

    if-eq v10, v14, :cond_26

    aget-char v10, v0, v8

    const/16 v15, 0x2d

    if-ne v10, v15, :cond_25

    goto :goto_d

    .line 1695
    :cond_25
    return v1

    .line 1688
    :cond_26
    const/16 v15, 0x2d

    .line 1689
    :goto_d
    if-nez v5, :cond_27

    .line 1690
    return v1

    .line 1692
    :cond_27
    const/4 v5, 0x0

    .line 1693
    const/4 v6, 0x0

    goto :goto_f

    .line 1677
    :cond_28
    const/16 v14, 0x2b

    const/16 v15, 0x2d

    .line 1679
    :goto_e
    if-eqz v3, :cond_29

    .line 1681
    return v1

    .line 1683
    :cond_29
    if-nez v6, :cond_2a

    .line 1684
    return v1

    .line 1686
    :cond_2a
    const/4 v3, 0x1

    .line 1687
    const/4 v5, 0x1

    .line 1697
    :goto_f
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x30

    const/4 v10, 0x1

    goto/16 :goto_7
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 1567
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1597
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->isCreatable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isParsable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 1754
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1755
    return v1

    .line 1757
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_1

    .line 1758
    return v1

    .line 1760
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_3

    .line 1761
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1762
    return v1

    .line 1764
    :cond_2
    invoke-static {p0, v2}, Lcn/xutils/commons/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 1766
    :cond_3
    invoke-static {p0, v1}, Lcn/xutils/commons/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static isZero(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "mant"    # Ljava/lang/String;
    .param p1, "dec"    # Ljava/lang/String;

    .line 876
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/xutils/commons/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static max(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .line 1515
    if-le p1, p0, :cond_0

    .line 1516
    move p0, p1

    .line 1518
    :cond_0
    if-le p2, p0, :cond_1

    .line 1519
    move p0, p2

    .line 1521
    :cond_1
    return p0
.end method

.method public static varargs max([B)B
    .locals 3
    .param p0, "array"    # [B

    .line 1265
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1268
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 1269
    .local v0, "max":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1270
    aget-byte v2, p0, v1

    if-le v2, v0, :cond_0

    .line 1271
    aget-byte v0, p0, v1

    .line 1269
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1275
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static max(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 1537
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs max([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 1290
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1293
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1294
    .local v0, "max":D
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1295
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1296
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    return-wide v3

    .line 1298
    :cond_0
    aget-wide v3, p0, v2

    cmpl-double v3, v3, v0

    if-lez v3, :cond_1

    .line 1299
    aget-wide v0, p0, v2

    .line 1294
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1303
    .end local v2    # "j":I
    :cond_2
    return-wide v0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 1553
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static varargs max([F)F
    .locals 3
    .param p0, "array"    # [F

    .line 1318
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1321
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1322
    .local v0, "max":F
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1323
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1324
    const/high16 v2, 0x7fc00000    # Float.NaN

    return v2

    .line 1326
    :cond_0
    aget v2, p0, v1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 1327
    aget v0, p0, v1

    .line 1322
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1331
    .end local v1    # "j":I
    :cond_2
    return v0
.end method

.method public static max(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 1479
    if-le p1, p0, :cond_0

    .line 1480
    move p0, p1

    .line 1482
    :cond_0
    if-le p2, p0, :cond_1

    .line 1483
    move p0, p2

    .line 1485
    :cond_1
    return p0
.end method

.method public static varargs max([I)I
    .locals 3
    .param p0, "array"    # [I

    .line 1217
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1220
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1221
    .local v0, "max":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1222
    aget v2, p0, v1

    if-le v2, v0, :cond_0

    .line 1223
    aget v0, p0, v1

    .line 1221
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1227
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public static max(JJJ)J
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 1461
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 1462
    move-wide p0, p2

    .line 1464
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 1465
    move-wide p0, p4

    .line 1467
    :cond_1
    return-wide p0
.end method

.method public static varargs max([J)J
    .locals 5
    .param p0, "array"    # [J

    .line 1193
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1196
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1197
    .local v0, "max":J
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1198
    aget-wide v3, p0, v2

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 1199
    aget-wide v0, p0, v2

    .line 1197
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1203
    .end local v2    # "j":I
    :cond_1
    return-wide v0
.end method

.method public static max(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .line 1497
    if-le p1, p0, :cond_0

    .line 1498
    move p0, p1

    .line 1500
    :cond_0
    if-le p2, p0, :cond_1

    .line 1501
    move p0, p2

    .line 1503
    :cond_1
    return p0
.end method

.method public static varargs max([S)S
    .locals 3
    .param p0, "array"    # [S

    .line 1241
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1244
    const/4 v0, 0x0

    aget-short v0, p0, v0

    .line 1245
    .local v0, "max":S
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1246
    aget-short v2, p0, v1

    if-le v2, v0, :cond_0

    .line 1247
    aget-short v0, p0, v1

    .line 1245
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1251
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static min(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .line 1410
    if-ge p1, p0, :cond_0

    .line 1411
    move p0, p1

    .line 1413
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1414
    move p0, p2

    .line 1416
    :cond_1
    return p0
.end method

.method public static varargs min([B)B
    .locals 3
    .param p0, "array"    # [B

    .line 1113
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1116
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 1117
    .local v0, "min":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1118
    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 1119
    aget-byte v0, p0, v1

    .line 1117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1123
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static min(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 1432
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 1138
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1141
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1142
    .local v0, "min":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1143
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1144
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    return-wide v3

    .line 1146
    :cond_0
    aget-wide v3, p0, v2

    cmpg-double v3, v3, v0

    if-gez v3, :cond_1

    .line 1147
    aget-wide v0, p0, v2

    .line 1142
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1151
    .end local v2    # "i":I
    :cond_2
    return-wide v0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 1448
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static varargs min([F)F
    .locals 3
    .param p0, "array"    # [F

    .line 1166
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1169
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1170
    .local v0, "min":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1171
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1172
    const/high16 v2, 0x7fc00000    # Float.NaN

    return v2

    .line 1174
    :cond_0
    aget v2, p0, v1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1

    .line 1175
    aget v0, p0, v1

    .line 1170
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1179
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static min(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 1374
    if-ge p1, p0, :cond_0

    .line 1375
    move p0, p1

    .line 1377
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1378
    move p0, p2

    .line 1380
    :cond_1
    return p0
.end method

.method public static varargs min([I)I
    .locals 3
    .param p0, "array"    # [I

    .line 1065
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1068
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1069
    .local v0, "min":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1070
    aget v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 1071
    aget v0, p0, v1

    .line 1069
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1075
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public static min(JJJ)J
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 1356
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 1357
    move-wide p0, p2

    .line 1359
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 1360
    move-wide p0, p4

    .line 1362
    :cond_1
    return-wide p0
.end method

.method public static varargs min([J)J
    .locals 5
    .param p0, "array"    # [J

    .line 1041
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1044
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1045
    .local v0, "min":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1046
    aget-wide v3, p0, v2

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 1047
    aget-wide v0, p0, v2

    .line 1045
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1051
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method public static min(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .line 1392
    if-ge p1, p0, :cond_0

    .line 1393
    move p0, p1

    .line 1395
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1396
    move p0, p2

    .line 1398
    :cond_1
    return p0
.end method

.method public static varargs min([S)S
    .locals 3
    .param p0, "array"    # [S

    .line 1089
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1092
    const/4 v0, 0x0

    aget-short v0, p0, v0

    .line 1093
    .local v0, "min":S
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1094
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 1095
    aget-short v0, p0, v1

    .line 1093
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1099
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # B

    .line 381
    if-nez p0, :cond_0

    .line 382
    return p1

    .line 385
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 268
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcn/xutils/commons/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .line 291
    if-nez p0, :cond_0

    .line 292
    return-wide p1

    .line 295
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static toDouble(Ljava/math/BigDecimal;)D
    .locals 2
    .param p0, "value"    # Ljava/math/BigDecimal;

    .line 318
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcn/xutils/commons/math/NumberUtils;->toDouble(Ljava/math/BigDecimal;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/math/BigDecimal;D)D
    .locals 2
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "defaultValue"    # D

    .line 339
    if-nez p0, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static toFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .line 239
    if-nez p0, :cond_0

    .line 240
    return p1

    .line 243
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 138
    if-nez p0, :cond_0

    .line 139
    return p1

    .line 142
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 166
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcn/xutils/commons/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .line 187
    if-nez p0, :cond_0

    .line 188
    return-wide p1

    .line 191
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Double;

    .line 530
    sget-object v0, Lcn/xutils/commons/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lcn/xutils/commons/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Double;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 546
    if-nez p0, :cond_0

    .line 547
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 549
    :cond_0
    nop

    .line 550
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 549
    invoke-static {v0, p1, p2}, Lcn/xutils/commons/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Float;

    .line 491
    sget-object v0, Lcn/xutils/commons/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lcn/xutils/commons/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Float;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 507
    if-nez p0, :cond_0

    .line 508
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 510
    :cond_0
    nop

    .line 511
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 510
    invoke-static {v0, p1, p2}, Lcn/xutils/commons/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 569
    sget-object v0, Lcn/xutils/commons/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lcn/xutils/commons/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 585
    if-nez p0, :cond_0

    .line 586
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 588
    :cond_0
    nop

    .line 589
    invoke-static {p0}, Lcn/xutils/commons/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 588
    invoke-static {v0, p1, p2}, Lcn/xutils/commons/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/math/BigDecimal;

    .line 453
    sget-object v0, Lcn/xutils/commons/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lcn/xutils/commons/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 469
    if-nez p0, :cond_0

    .line 470
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 472
    :cond_0
    nop

    .line 474
    if-nez p2, :cond_1

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 472
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toShort(Ljava/lang/String;)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 409
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # S

    .line 430
    if-nez p0, :cond_0

    .line 431
    return p1

    .line 434
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private static validateArray(Ljava/lang/Object;)V
    .locals 3
    .param p0, "array"    # Ljava/lang/Object;

    .line 1342
    const-string v0, "array"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1343
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Array cannot be empty."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1344
    return-void
.end method

.method private static withDecimalsParsing(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "beginIdx"    # I

    .line 1770
    const/4 v0, 0x0

    .line 1771
    .local v0, "decimalPoints":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 1772
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v5

    .line 1773
    .local v2, "isDecimalPoint":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 1774
    add-int/lit8 v0, v0, 0x1

    .line 1776
    :cond_1
    if-le v0, v3, :cond_2

    .line 1777
    return v5

    .line 1779
    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1780
    return v5

    .line 1771
    .end local v2    # "isDecimalPoint":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1783
    .end local v1    # "i":I
    :cond_4
    return v3
.end method
