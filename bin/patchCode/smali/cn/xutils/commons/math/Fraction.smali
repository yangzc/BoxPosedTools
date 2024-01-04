.class public final Lcn/xutils/commons/math/Fraction;
.super Ljava/lang/Number;
.source "Fraction.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcn/xutils/commons/math/Fraction;",
        ">;"
    }
.end annotation


# static fields
.field public static final FOUR_FIFTHS:Lcn/xutils/commons/math/Fraction;

.field public static final ONE:Lcn/xutils/commons/math/Fraction;

.field public static final ONE_FIFTH:Lcn/xutils/commons/math/Fraction;

.field public static final ONE_HALF:Lcn/xutils/commons/math/Fraction;

.field public static final ONE_QUARTER:Lcn/xutils/commons/math/Fraction;

.field public static final ONE_THIRD:Lcn/xutils/commons/math/Fraction;

.field public static final THREE_FIFTHS:Lcn/xutils/commons/math/Fraction;

.field public static final THREE_QUARTERS:Lcn/xutils/commons/math/Fraction;

.field public static final TWO_FIFTHS:Lcn/xutils/commons/math/Fraction;

.field public static final TWO_QUARTERS:Lcn/xutils/commons/math/Fraction;

.field public static final TWO_THIRDS:Lcn/xutils/commons/math/Fraction;

.field public static final ZERO:Lcn/xutils/commons/math/Fraction;

.field private static final serialVersionUID:J = 0x3b76f0847842L


# instance fields
.field private final denominator:I

.field private transient hashCode:I

.field private final numerator:I

.field private transient toProperString:Ljava/lang/String;

.field private transient toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    sput-object v0, Lcn/xutils/commons/math/Fraction;->ZERO:Lcn/xutils/commons/math/Fraction;

    .line 51
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    invoke-direct {v0, v2, v2}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    sput-object v0, Lcn/xutils/commons/math/Fraction;->ONE:Lcn/xutils/commons/math/Fraction;

    .line 55
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    sput-object v0, Lcn/xutils/commons/math/Fraction;->ONE_HALF:Lcn/xutils/commons/math/Fraction;

    .line 59
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    sput-object v0, Lcn/xutils/commons/math/Fraction;->ONE_THIRD:Lcn/xutils/commons/math/Fraction;

    .line 63
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    invoke-direct {v0, v1, v3}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    sput-object v0, Lcn/xutils/commons/math/Fraction;->TWO_THIRDS:Lcn/xutils/commons/math/Fraction;

    .line 67
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v4}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    sput-object v0, Lcn/xutils/commons/math/Fraction;->ONE_QUARTER:Lcn/xutils/commons/math/Fraction;

    .line 71
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    invoke-direct {v0, v1, v4}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    sput-object v0, Lcn/xutils/commons/math/Fraction;->TWO_QUARTERS:Lcn/xutils/commons/math/Fraction;

    .line 75
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    invoke-direct {v0, v3, v4}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    sput-object v0, Lcn/xutils/commons/math/Fraction;->THREE_QUARTERS:Lcn/xutils/commons/math/Fraction;

    .line 79
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    const/4 v5, 0x5

    invoke-direct {v0, v2, v5}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    sput-object v0, Lcn/xutils/commons/math/Fraction;->ONE_FIFTH:Lcn/xutils/commons/math/Fraction;

    .line 83
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    invoke-direct {v0, v1, v5}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    sput-object v0, Lcn/xutils/commons/math/Fraction;->TWO_FIFTHS:Lcn/xutils/commons/math/Fraction;

    .line 87
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    invoke-direct {v0, v3, v5}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    sput-object v0, Lcn/xutils/commons/math/Fraction;->THREE_FIFTHS:Lcn/xutils/commons/math/Fraction;

    .line 91
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    invoke-direct {v0, v4, v5}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    sput-object v0, Lcn/xutils/commons/math/Fraction;->FOUR_FIFTHS:Lcn/xutils/commons/math/Fraction;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .line 123
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 124
    iput p1, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    .line 125
    iput p2, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    .line 126
    return-void
.end method

.method private static addAndCheck(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 657
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 658
    .local v0, "s":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 661
    long-to-int v2, v0

    return v2

    .line 659
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: add"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private addSub(Lcn/xutils/commons/math/Fraction;Z)Lcn/xutils/commons/math/Fraction;
    .locals 11
    .param p1, "fraction"    # Lcn/xutils/commons/math/Fraction;
    .param p2, "isAdd"    # Z

    .line 720
    const-string v0, "fraction"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 722
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    if-nez v0, :cond_1

    .line 723
    if-eqz p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/xutils/commons/math/Fraction;->negate()Lcn/xutils/commons/math/Fraction;

    move-result-object v0

    :goto_0
    return-object v0

    .line 725
    :cond_1
    iget v0, p1, Lcn/xutils/commons/math/Fraction;->numerator:I

    if-nez v0, :cond_2

    .line 726
    return-object p0

    .line 730
    :cond_2
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    iget v1, p1, Lcn/xutils/commons/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lcn/xutils/commons/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 731
    .local v0, "d1":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 733
    iget v1, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    iget v2, p1, Lcn/xutils/commons/math/Fraction;->denominator:I

    invoke-static {v1, v2}, Lcn/xutils/commons/math/Fraction;->mulAndCheck(II)I

    move-result v1

    .line 734
    .local v1, "uvp":I
    iget v2, p1, Lcn/xutils/commons/math/Fraction;->numerator:I

    iget v3, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    invoke-static {v2, v3}, Lcn/xutils/commons/math/Fraction;->mulAndCheck(II)I

    move-result v2

    .line 735
    .local v2, "upv":I
    new-instance v3, Lcn/xutils/commons/math/Fraction;

    if-eqz p2, :cond_3

    invoke-static {v1, v2}, Lcn/xutils/commons/math/Fraction;->addAndCheck(II)I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-static {v1, v2}, Lcn/xutils/commons/math/Fraction;->subAndCheck(II)I

    move-result v4

    :goto_1
    iget v5, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    iget v6, p1, Lcn/xutils/commons/math/Fraction;->denominator:I

    invoke-static {v5, v6}, Lcn/xutils/commons/math/Fraction;->mulPosAndCheck(II)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    return-object v3

    .line 741
    .end local v1    # "uvp":I
    .end local v2    # "upv":I
    :cond_4
    iget v1, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p1, Lcn/xutils/commons/math/Fraction;->denominator:I

    div-int/2addr v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 742
    .local v1, "uvp":Ljava/math/BigInteger;
    iget v2, p1, Lcn/xutils/commons/math/Fraction;->numerator:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    div-int/2addr v3, v0

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 743
    .local v2, "upv":Ljava/math/BigInteger;
    if-eqz p2, :cond_5

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 746
    .local v3, "t":Ljava/math/BigInteger;
    :goto_2
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 747
    .local v4, "tmodd1":I
    if-nez v4, :cond_6

    move v5, v0

    goto :goto_3

    :cond_6
    invoke-static {v4, v0}, Lcn/xutils/commons/math/Fraction;->greatestCommonDivisor(II)I

    move-result v5

    .line 750
    .local v5, "d2":I
    :goto_3
    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 751
    .local v6, "w":Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_7

    .line 754
    new-instance v7, Lcn/xutils/commons/math/Fraction;

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    iget v9, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    div-int/2addr v9, v0

    iget v10, p1, Lcn/xutils/commons/math/Fraction;->denominator:I

    div-int/2addr v10, v5

    invoke-static {v9, v10}, Lcn/xutils/commons/math/Fraction;->mulPosAndCheck(II)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    return-object v7

    .line 752
    :cond_7
    new-instance v7, Ljava/lang/ArithmeticException;

    const-string v8, "overflow: numerator too large after multiply"

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static getFraction(D)Lcn/xutils/commons/math/Fraction;
    .locals 30
    .param p0, "value"    # D

    .line 247
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 248
    .local v0, "sign":I
    :goto_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 249
    .end local p0    # "value":D
    .local v2, "value":D
    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_4

    .line 252
    double-to-int v4, v2

    .line 253
    .local v4, "wholeNumber":I
    int-to-double v5, v4

    sub-double/2addr v2, v5

    .line 255
    const/4 v5, 0x0

    .line 256
    .local v5, "numer0":I
    const/4 v6, 0x1

    .line 257
    .local v6, "denom0":I
    const/4 v7, 0x1

    .line 258
    .local v7, "numer1":I
    const/4 v8, 0x0

    .line 261
    .local v8, "denom1":I
    double-to-int v9, v2

    .line 263
    .local v9, "a1":I
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 265
    .local v10, "x1":D
    int-to-double v12, v9

    sub-double v12, v2, v12

    .line 267
    .local v12, "y1":D
    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 269
    .local v14, "delta2":D
    const/16 v16, 0x1

    .line 271
    .local v16, "i":I
    :goto_1
    move-wide/from16 v17, v14

    .line 272
    .local v17, "delta1":D
    move-wide/from16 p0, v2

    .end local v2    # "value":D
    .restart local p0    # "value":D
    div-double v1, v10, v12

    double-to-int v1, v1

    .line 273
    .local v1, "a2":I
    move-wide v2, v12

    .line 274
    .local v2, "x2":D
    move-wide/from16 v20, v14

    .end local v14    # "delta2":D
    .local v20, "delta2":D
    int-to-double v14, v1

    mul-double/2addr v14, v12

    sub-double v14, v10, v14

    .line 275
    .local v14, "y2":D
    mul-int v22, v9, v7

    move-wide/from16 v23, v10

    .end local v10    # "x1":D
    .local v23, "x1":D
    add-int v10, v22, v5

    .line 276
    .local v10, "numer2":I
    mul-int v11, v9, v8

    add-int/2addr v11, v6

    .line 277
    .local v11, "denom2":I
    move/from16 v22, v5

    move/from16 v25, v6

    .end local v5    # "numer0":I
    .end local v6    # "denom0":I
    .local v22, "numer0":I
    .local v25, "denom0":I
    int-to-double v5, v10

    move-wide/from16 v26, v12

    .end local v12    # "y1":D
    .local v26, "y1":D
    int-to-double v12, v11

    div-double/2addr v5, v12

    .line 278
    .local v5, "fraction":D
    move-wide/from16 v12, p0

    .end local p0    # "value":D
    .local v12, "value":D
    sub-double v28, v12, v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    .line 279
    move v9, v1

    .line 280
    move-wide/from16 v23, v2

    .line 281
    move-wide/from16 v26, v14

    .line 282
    move/from16 v22, v7

    .line 283
    move/from16 p0, v8

    .line 284
    .end local v25    # "denom0":I
    .local p0, "denom0":I
    move v7, v10

    .line 285
    move v8, v11

    .line 286
    move/from16 v25, v1

    const/16 v19, 0x1

    .end local v1    # "a2":I
    .local v25, "a2":I
    add-int/lit8 v1, v16, 0x1

    .line 287
    .end local v16    # "i":I
    .local v1, "i":I
    cmpl-double v16, v17, v20

    move-wide/from16 v28, v2

    .end local v2    # "x2":D
    .local v28, "x2":D
    const/16 v2, 0x19

    if-lez v16, :cond_2

    const/16 v3, 0x2710

    if-gt v11, v3, :cond_2

    if-lez v11, :cond_2

    if-lt v1, v2, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v6, p0

    move/from16 v16, v1

    move-wide v2, v12

    move-wide/from16 v14, v20

    move/from16 v5, v22

    move-wide/from16 v10, v23

    move-wide/from16 v12, v26

    goto :goto_1

    .line 288
    :cond_2
    :goto_2
    if-eq v1, v2, :cond_3

    .line 291
    move/from16 v2, p0

    .end local p0    # "denom0":I
    .local v2, "denom0":I
    mul-int v3, v4, v2

    add-int v3, v22, v3

    mul-int/2addr v3, v0

    invoke-static {v3, v2}, Lcn/xutils/commons/math/Fraction;->getReducedFraction(II)Lcn/xutils/commons/math/Fraction;

    move-result-object v3

    return-object v3

    .line 289
    .end local v2    # "denom0":I
    .restart local p0    # "denom0":I
    :cond_3
    new-instance v3, Ljava/lang/ArithmeticException;

    move/from16 v16, v0

    .end local v0    # "sign":I
    .local v16, "sign":I
    const-string v0, "Unable to convert double to fraction"

    invoke-direct {v3, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    .end local v1    # "i":I
    .end local v4    # "wholeNumber":I
    .end local v5    # "fraction":D
    .end local v7    # "numer1":I
    .end local v8    # "denom1":I
    .end local v9    # "a1":I
    .end local v10    # "numer2":I
    .end local v11    # "denom2":I
    .end local v12    # "value":D
    .end local v14    # "y2":D
    .end local v16    # "sign":I
    .end local v17    # "delta1":D
    .end local v20    # "delta2":D
    .end local v22    # "numer0":I
    .end local v23    # "x1":D
    .end local v25    # "a2":I
    .end local v26    # "y1":D
    .end local v28    # "x2":D
    .end local p0    # "denom0":I
    .restart local v0    # "sign":I
    .local v2, "value":D
    :cond_4
    move/from16 v16, v0

    .line 250
    .end local v0    # "sign":I
    .restart local v16    # "sign":I
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The value must not be greater than Integer.MAX_VALUE or NaN"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFraction(II)Lcn/xutils/commons/math/Fraction;
    .locals 2
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .line 141
    if-eqz p1, :cond_2

    .line 144
    if-gez p1, :cond_1

    .line 145
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 148
    neg-int p0, p0

    .line 149
    neg-int p1, p1

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    :goto_0
    new-instance v0, Lcn/xutils/commons/math/Fraction;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    return-object v0

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFraction(III)Lcn/xutils/commons/math/Fraction;
    .locals 4
    .param p0, "whole"    # I
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .line 171
    if-eqz p2, :cond_4

    .line 174
    if-ltz p2, :cond_3

    .line 177
    if-ltz p1, :cond_2

    .line 181
    if-gez p0, :cond_0

    .line 182
    int-to-long v0, p0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .local v0, "numeratorValue":J
    goto :goto_0

    .line 184
    .end local v0    # "numeratorValue":J
    :cond_0
    int-to-long v0, p0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 186
    .restart local v0    # "numeratorValue":J
    :goto_0
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 189
    new-instance v2, Lcn/xutils/commons/math/Fraction;

    long-to-int v3, v0

    invoke-direct {v2, v3, p2}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    return-object v2

    .line 187
    :cond_1
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Numerator too large to represent as an Integer."

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    .end local v0    # "numeratorValue":J
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The numerator must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFraction(Ljava/lang/String;)Lcn/xutils/commons/math/Fraction;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 313
    const-string v0, "str"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 316
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 317
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/xutils/commons/math/Fraction;->getFraction(D)Lcn/xutils/commons/math/Fraction;

    move-result-object v1

    return-object v1

    .line 321
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 322
    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 323
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 324
    .local v3, "whole":I
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 325
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 326
    if-ltz v0, :cond_1

    .line 329
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 330
    .local v1, "numer":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 331
    .local v2, "denom":I
    invoke-static {v3, v1, v2}, Lcn/xutils/commons/math/Fraction;->getFraction(III)Lcn/xutils/commons/math/Fraction;

    move-result-object v4

    return-object v4

    .line 327
    .end local v1    # "numer":I
    .end local v2    # "denom":I
    :cond_1
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "The fraction could not be parsed as the format X Y/Z"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    .end local v3    # "whole":I
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 336
    if-gez v0, :cond_3

    .line 338
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/xutils/commons/math/Fraction;->getFraction(II)Lcn/xutils/commons/math/Fraction;

    move-result-object v1

    return-object v1

    .line 340
    :cond_3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 341
    .restart local v1    # "numer":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 342
    .restart local v2    # "denom":I
    invoke-static {v1, v2}, Lcn/xutils/commons/math/Fraction;->getFraction(II)Lcn/xutils/commons/math/Fraction;

    move-result-object v3

    return-object v3
.end method

.method public static getReducedFraction(II)Lcn/xutils/commons/math/Fraction;
    .locals 2
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .line 207
    if-eqz p1, :cond_4

    .line 210
    if-nez p0, :cond_0

    .line 211
    sget-object v0, Lcn/xutils/commons/math/Fraction;->ZERO:Lcn/xutils/commons/math/Fraction;

    return-object v0

    .line 214
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_1

    .line 215
    div-int/lit8 p0, p0, 0x2

    .line 216
    div-int/lit8 p1, p1, 0x2

    .line 218
    :cond_1
    if-gez p1, :cond_3

    .line 219
    if-eq p0, v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 222
    neg-int p0, p0

    .line 223
    neg-int p1, p1

    goto :goto_0

    .line 220
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_3
    :goto_0
    invoke-static {p0, p1}, Lcn/xutils/commons/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 227
    .local v0, "gcd":I
    div-int/2addr p0, v0

    .line 228
    div-int/2addr p1, v0

    .line 229
    new-instance v1, Lcn/xutils/commons/math/Fraction;

    invoke-direct {v1, p0, p1}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    return-object v1

    .line 208
    .end local v0    # "gcd":I
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greatestCommonDivisor(II)I
    .locals 5
    .param p0, "u"    # I
    .param p1, "v"    # I

    .line 557
    const-string v0, "overflow: gcd is 2^31"

    if-eqz p0, :cond_b

    if-nez p1, :cond_0

    goto :goto_4

    .line 564
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_3

    .line 571
    :cond_1
    if-lez p0, :cond_2

    .line 572
    neg-int p0, p0

    .line 574
    :cond_2
    if-lez p1, :cond_3

    .line 575
    neg-int p1, p1

    .line 578
    :cond_3
    const/4 v1, 0x0

    .line 579
    .local v1, "k":I
    :goto_0
    and-int/lit8 v3, p0, 0x1

    const/16 v4, 0x1f

    if-nez v3, :cond_4

    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_4

    if-ge v1, v4, :cond_4

    .line 580
    div-int/lit8 p0, p0, 0x2

    .line 581
    div-int/lit8 p1, p1, 0x2

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    :cond_4
    if-eq v1, v4, :cond_9

    .line 589
    and-int/lit8 v0, p0, 0x1

    if-ne v0, v2, :cond_5

    move v0, p1

    goto :goto_1

    :cond_5
    div-int/lit8 v0, p0, 0x2

    neg-int v0, v0

    .line 595
    .local v0, "t":I
    :cond_6
    :goto_1
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_7

    .line 596
    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 599
    :cond_7
    if-lez v0, :cond_8

    .line 600
    neg-int p0, v0

    goto :goto_2

    .line 602
    :cond_8
    move p1, v0

    .line 605
    :goto_2
    sub-int v3, p1, p0

    div-int/lit8 v0, v3, 0x2

    .line 608
    if-nez v0, :cond_6

    .line 609
    neg-int v3, p0

    shl-int/2addr v2, v1

    mul-int/2addr v3, v2

    return v3

    .line 585
    .end local v0    # "t":I
    :cond_9
    new-instance v2, Ljava/lang/ArithmeticException;

    invoke-direct {v2, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 565
    .end local v1    # "k":I
    :cond_a
    :goto_3
    return v2

    .line 558
    :cond_b
    :goto_4
    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_c

    if-eq p1, v1, :cond_c

    .line 561
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 559
    :cond_c
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static mulAndCheck(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 622
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 623
    .local v0, "m":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 626
    long-to-int v2, v0

    return v2

    .line 624
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: mul"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static mulPosAndCheck(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 640
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 641
    .local v0, "m":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 644
    long-to-int v2, v0

    return v2

    .line 642
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: mulPos"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static subAndCheck(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 674
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 675
    .local v0, "s":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 678
    long-to-int v2, v0

    return v2

    .line 676
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: add"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public abs()Lcn/xutils/commons/math/Fraction;
    .locals 1

    .line 507
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    if-ltz v0, :cond_0

    .line 508
    return-object p0

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->negate()Lcn/xutils/commons/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcn/xutils/commons/math/Fraction;)Lcn/xutils/commons/math/Fraction;
    .locals 1
    .param p1, "fraction"    # Lcn/xutils/commons/math/Fraction;

    .line 692
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/xutils/commons/math/Fraction;->addSub(Lcn/xutils/commons/math/Fraction;Z)Lcn/xutils/commons/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcn/xutils/commons/math/Fraction;)I
    .locals 6
    .param p1, "other"    # Lcn/xutils/commons/math/Fraction;

    .line 846
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 847
    return v0

    .line 849
    :cond_0
    iget v1, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    iget v2, p1, Lcn/xutils/commons/math/Fraction;->numerator:I

    if-ne v1, v2, :cond_1

    iget v3, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    iget v4, p1, Lcn/xutils/commons/math/Fraction;->denominator:I

    if-ne v3, v4, :cond_1

    .line 850
    return v0

    .line 854
    :cond_1
    int-to-long v0, v1

    iget v3, p1, Lcn/xutils/commons/math/Fraction;->denominator:I

    int-to-long v3, v3

    mul-long/2addr v0, v3

    .line 855
    .local v0, "first":J
    int-to-long v2, v2

    iget v4, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 856
    .local v2, "second":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v4

    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lcn/xutils/commons/math/Fraction;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/math/Fraction;->compareTo(Lcn/xutils/commons/math/Fraction;)I

    move-result p1

    return p1
.end method

.method public divideBy(Lcn/xutils/commons/math/Fraction;)Lcn/xutils/commons/math/Fraction;
    .locals 2
    .param p1, "fraction"    # Lcn/xutils/commons/math/Fraction;

    .line 791
    const-string v0, "fraction"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 792
    iget v0, p1, Lcn/xutils/commons/math/Fraction;->numerator:I

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p1}, Lcn/xutils/commons/math/Fraction;->invert()Lcn/xutils/commons/math/Fraction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/math/Fraction;->multiplyBy(Lcn/xutils/commons/math/Fraction;)Lcn/xutils/commons/math/Fraction;

    move-result-object v0

    return-object v0

    .line 793
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The fraction to divide by must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doubleValue()D
    .locals 4

    .line 437
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 808
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 809
    return v0

    .line 811
    :cond_0
    instance-of v1, p1, Lcn/xutils/commons/math/Fraction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 812
    return v2

    .line 814
    :cond_1
    move-object v1, p1

    check-cast v1, Lcn/xutils/commons/math/Fraction;

    .line 815
    .local v1, "other":Lcn/xutils/commons/math/Fraction;
    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->getNumerator()I

    move-result v3

    invoke-virtual {v1}, Lcn/xutils/commons/math/Fraction;->getNumerator()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->getDenominator()I

    move-result v3

    invoke-virtual {v1}, Lcn/xutils/commons/math/Fraction;->getDenominator()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public floatValue()F
    .locals 2

    .line 426
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    int-to-float v0, v0

    iget v1, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getDenominator()I
    .locals 1

    .line 363
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    .line 354
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    return v0
.end method

.method public getProperNumerator()I
    .locals 2

    .line 378
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    iget v1, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getProperWhole()I
    .locals 2

    .line 393
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    iget v1, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 825
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->hashCode:I

    if-nez v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->getNumerator()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->getDenominator()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/xutils/commons/math/Fraction;->hashCode:I

    .line 829
    :cond_0
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->hashCode:I

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 404
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    iget v1, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invert()Lcn/xutils/commons/math/Fraction;
    .locals 3

    .line 470
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    if-eqz v0, :cond_2

    .line 473
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 476
    if-gez v0, :cond_0

    .line 477
    new-instance v1, Lcn/xutils/commons/math/Fraction;

    iget v2, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    neg-int v2, v2

    neg-int v0, v0

    invoke-direct {v1, v2, v0}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    return-object v1

    .line 479
    :cond_0
    new-instance v1, Lcn/xutils/commons/math/Fraction;

    iget v2, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    invoke-direct {v1, v2, v0}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    return-object v1

    .line 474
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate numerator"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unable to invert zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longValue()J
    .locals 4

    .line 415
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    int-to-long v0, v0

    iget v2, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public multiplyBy(Lcn/xutils/commons/math/Fraction;)Lcn/xutils/commons/math/Fraction;
    .locals 5
    .param p1, "fraction"    # Lcn/xutils/commons/math/Fraction;

    .line 768
    const-string v0, "fraction"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 769
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    if-eqz v0, :cond_1

    iget v1, p1, Lcn/xutils/commons/math/Fraction;->numerator:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    iget v1, p1, Lcn/xutils/commons/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lcn/xutils/commons/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 775
    .local v0, "d1":I
    iget v1, p1, Lcn/xutils/commons/math/Fraction;->numerator:I

    iget v2, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    invoke-static {v1, v2}, Lcn/xutils/commons/math/Fraction;->greatestCommonDivisor(II)I

    move-result v1

    .line 776
    .local v1, "d2":I
    iget v2, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    div-int/2addr v2, v0

    iget v3, p1, Lcn/xutils/commons/math/Fraction;->numerator:I

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Lcn/xutils/commons/math/Fraction;->mulAndCheck(II)I

    move-result v2

    iget v3, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    div-int/2addr v3, v1

    iget v4, p1, Lcn/xutils/commons/math/Fraction;->denominator:I

    div-int/2addr v4, v0

    .line 777
    invoke-static {v3, v4}, Lcn/xutils/commons/math/Fraction;->mulPosAndCheck(II)I

    move-result v3

    .line 776
    invoke-static {v2, v3}, Lcn/xutils/commons/math/Fraction;->getReducedFraction(II)Lcn/xutils/commons/math/Fraction;

    move-result-object v2

    return-object v2

    .line 770
    .end local v0    # "d1":I
    .end local v1    # "d2":I
    :cond_1
    :goto_0
    sget-object v0, Lcn/xutils/commons/math/Fraction;->ZERO:Lcn/xutils/commons/math/Fraction;

    return-object v0
.end method

.method public negate()Lcn/xutils/commons/math/Fraction;
    .locals 3

    .line 491
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 494
    new-instance v1, Lcn/xutils/commons/math/Fraction;

    neg-int v0, v0

    iget v2, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    invoke-direct {v1, v0, v2}, Lcn/xutils/commons/math/Fraction;-><init>(II)V

    return-object v1

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: too large to negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pow(I)Lcn/xutils/commons/math/Fraction;
    .locals 2
    .param p1, "power"    # I

    .line 526
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 527
    return-object p0

    .line 529
    :cond_0
    if-nez p1, :cond_1

    .line 530
    sget-object v0, Lcn/xutils/commons/math/Fraction;->ONE:Lcn/xutils/commons/math/Fraction;

    return-object v0

    .line 532
    :cond_1
    if-gez p1, :cond_3

    .line 533
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_2

    .line 534
    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->invert()Lcn/xutils/commons/math/Fraction;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/xutils/commons/math/Fraction;->pow(I)Lcn/xutils/commons/math/Fraction;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcn/xutils/commons/math/Fraction;->pow(I)Lcn/xutils/commons/math/Fraction;

    move-result-object v0

    return-object v0

    .line 536
    :cond_2
    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->invert()Lcn/xutils/commons/math/Fraction;

    move-result-object v0

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcn/xutils/commons/math/Fraction;->pow(I)Lcn/xutils/commons/math/Fraction;

    move-result-object v0

    return-object v0

    .line 538
    :cond_3
    invoke-virtual {p0, p0}, Lcn/xutils/commons/math/Fraction;->multiplyBy(Lcn/xutils/commons/math/Fraction;)Lcn/xutils/commons/math/Fraction;

    move-result-object v0

    .line 539
    .local v0, "f":Lcn/xutils/commons/math/Fraction;
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_4

    .line 540
    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcn/xutils/commons/math/Fraction;->pow(I)Lcn/xutils/commons/math/Fraction;

    move-result-object v1

    return-object v1

    .line 542
    :cond_4
    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcn/xutils/commons/math/Fraction;->pow(I)Lcn/xutils/commons/math/Fraction;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/xutils/commons/math/Fraction;->multiplyBy(Lcn/xutils/commons/math/Fraction;)Lcn/xutils/commons/math/Fraction;

    move-result-object v1

    return-object v1
.end method

.method public reduce()Lcn/xutils/commons/math/Fraction;
    .locals 3

    .line 450
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    if-nez v0, :cond_1

    .line 451
    sget-object v0, Lcn/xutils/commons/math/Fraction;->ZERO:Lcn/xutils/commons/math/Fraction;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/math/Fraction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0

    .line 453
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lcn/xutils/commons/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 454
    .local v0, "gcd":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 455
    return-object p0

    .line 457
    :cond_2
    iget v1, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    div-int/2addr v1, v0

    iget v2, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    div-int/2addr v2, v0

    invoke-static {v1, v2}, Lcn/xutils/commons/math/Fraction;->getFraction(II)Lcn/xutils/commons/math/Fraction;

    move-result-object v1

    return-object v1
.end method

.method public subtract(Lcn/xutils/commons/math/Fraction;)Lcn/xutils/commons/math/Fraction;
    .locals 1
    .param p1, "fraction"    # Lcn/xutils/commons/math/Fraction;

    .line 706
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/xutils/commons/math/Fraction;->addSub(Lcn/xutils/commons/math/Fraction;Z)Lcn/xutils/commons/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public toProperString()Ljava/lang/String;
    .locals 4

    .line 884
    iget-object v0, p0, Lcn/xutils/commons/math/Fraction;->toProperString:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 885
    iget v0, p0, Lcn/xutils/commons/math/Fraction;->numerator:I

    if-nez v0, :cond_0

    .line 886
    const-string v0, "0"

    iput-object v0, p0, Lcn/xutils/commons/math/Fraction;->toProperString:Ljava/lang/String;

    goto/16 :goto_1

    .line 887
    :cond_0
    iget v1, p0, Lcn/xutils/commons/math/Fraction;->denominator:I

    if-ne v0, v1, :cond_1

    .line 888
    const-string v0, "1"

    iput-object v0, p0, Lcn/xutils/commons/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_1

    .line 889
    :cond_1
    mul-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_2

    .line 890
    const-string v0, "-1"

    iput-object v0, p0, Lcn/xutils/commons/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_1

    .line 891
    :cond_2
    if-lez v0, :cond_3

    neg-int v0, v0

    :cond_3
    neg-int v1, v1

    const-string v2, "/"

    if-ge v0, v1, :cond_5

    .line 896
    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->getProperNumerator()I

    move-result v0

    .line 897
    .local v0, "properNumerator":I
    if-nez v0, :cond_4

    .line 898
    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->getProperWhole()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/xutils/commons/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_0

    .line 900
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->getProperWhole()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->getDenominator()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/xutils/commons/math/Fraction;->toProperString:Ljava/lang/String;

    .line 902
    .end local v0    # "properNumerator":I
    :goto_0
    goto :goto_1

    .line 903
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/math/Fraction;->toProperString:Ljava/lang/String;

    .line 906
    :cond_6
    :goto_1
    iget-object v0, p0, Lcn/xutils/commons/math/Fraction;->toProperString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 868
    iget-object v0, p0, Lcn/xutils/commons/math/Fraction;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/math/Fraction;->toString:Ljava/lang/String;

    .line 871
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/math/Fraction;->toString:Ljava/lang/String;

    return-object v0
.end method
