.class public Lcn/xutils/commons/mutable/MutableFloat;
.super Ljava/lang/Number;
.source "MutableFloat.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcn/xutils/commons/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcn/xutils/commons/mutable/MutableFloat;",
        ">;",
        "Lcn/xutils/commons/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x158f131a2L


# instance fields
.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "value"    # F

    .line 51
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 52
    iput p1, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 61
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 73
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 74
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 1
    .param p1, "operand"    # F

    .line 199
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 200
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 210
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 211
    return-void
.end method

.method public addAndGet(F)F
    .locals 1
    .param p1, "operand"    # F

    .line 243
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 244
    return v0
.end method

.method public addAndGet(Ljava/lang/Number;)F
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 257
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 258
    return v0
.end method

.method public compareTo(Lcn/xutils/commons/mutable/MutableFloat;)I
    .locals 2
    .param p1, "other"    # Lcn/xutils/commons/mutable/MutableFloat;

    .line 395
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    iget v1, p1, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcn/xutils/commons/mutable/MutableFloat;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableFloat;->compareTo(Lcn/xutils/commons/mutable/MutableFloat;)I

    move-result p1

    return p1
.end method

.method public decrement()V
    .locals 2

    .line 164
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 165
    return-void
.end method

.method public decrementAndGet()F
    .locals 2

    .line 188
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 189
    return v0
.end method

.method public doubleValue()D
    .locals 2

    .line 328
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 373
    instance-of v0, p1, Lcn/xutils/commons/mutable/MutableFloat;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/mutable/MutableFloat;

    iget v0, v0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 374
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    .line 318
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    return v0
.end method

.method public getAndAdd(F)F
    .locals 2
    .param p1, "operand"    # F

    .line 270
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 271
    .local v0, "last":F
    iget v1, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    add-float/2addr v1, p1

    iput v1, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 272
    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)F
    .locals 3
    .param p1, "operand"    # Ljava/lang/Number;

    .line 285
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 286
    .local v0, "last":F
    iget v1, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 287
    return v0
.end method

.method public getAndDecrement()F
    .locals 3

    .line 175
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 176
    .local v0, "last":F
    iget v1, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iput v1, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 177
    return v0
.end method

.method public getAndIncrement()F
    .locals 3

    .line 141
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 142
    .local v0, "last":F
    iget v1, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 143
    return v0
.end method

.method public getValue()Ljava/lang/Float;
    .locals 1

    .line 83
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableFloat;->getValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 384
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public increment()V
    .locals 2

    .line 130
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 131
    return-void
.end method

.method public incrementAndGet()F
    .locals 2

    .line 154
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 155
    return v0
.end method

.method public intValue()I
    .locals 1

    .line 298
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    .line 121
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 1

    .line 112
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 308
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "value"    # F

    .line 92
    iput p1, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 93
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 103
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 104
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableFloat;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(F)V
    .locals 1
    .param p1, "operand"    # F

    .line 220
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 221
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 231
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    .line 232
    return-void
.end method

.method public toFloat()Ljava/lang/Float;
    .locals 1

    .line 337
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableFloat;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 405
    iget v0, p0, Lcn/xutils/commons/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
