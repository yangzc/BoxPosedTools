.class public Lcn/xutils/commons/mutable/MutableDouble;
.super Ljava/lang/Number;
.source "MutableDouble.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcn/xutils/commons/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcn/xutils/commons/mutable/MutableDouble;",
        ">;",
        "Lcn/xutils/commons/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5e9a330cL


# instance fields
.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "value"    # D

    .line 51
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 52
    iput-wide p1, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;

    .line 61
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 73
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 74
    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 2
    .param p1, "operand"    # D

    .line 199
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 200
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 210
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 211
    return-void
.end method

.method public addAndGet(D)D
    .locals 2
    .param p1, "operand"    # D

    .line 243
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 244
    return-wide v0
.end method

.method public addAndGet(Ljava/lang/Number;)D
    .locals 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 257
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 258
    return-wide v0
.end method

.method public compareTo(Lcn/xutils/commons/mutable/MutableDouble;)I
    .locals 4
    .param p1, "other"    # Lcn/xutils/commons/mutable/MutableDouble;

    .line 394
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    iget-wide v2, p1, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcn/xutils/commons/mutable/MutableDouble;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableDouble;->compareTo(Lcn/xutils/commons/mutable/MutableDouble;)I

    move-result p1

    return p1
.end method

.method public decrement()V
    .locals 4

    .line 164
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 165
    return-void
.end method

.method public decrementAndGet()D
    .locals 4

    .line 188
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 189
    return-wide v0
.end method

.method public doubleValue()D
    .locals 2

    .line 328
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 371
    instance-of v0, p1, Lcn/xutils/commons/mutable/MutableDouble;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/mutable/MutableDouble;

    iget-wide v0, v0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 372
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 371
    :goto_0
    return v0
.end method

.method public floatValue()F
    .locals 2

    .line 318
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public getAndAdd(D)D
    .locals 4
    .param p1, "operand"    # D

    .line 270
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 271
    .local v0, "last":D
    iget-wide v2, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 272
    return-wide v0
.end method

.method public getAndAdd(Ljava/lang/Number;)D
    .locals 6
    .param p1, "operand"    # Ljava/lang/Number;

    .line 285
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 286
    .local v0, "last":D
    iget-wide v2, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 287
    return-wide v0
.end method

.method public getAndDecrement()D
    .locals 6

    .line 175
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 176
    .local v0, "last":D
    iget-wide v2, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 177
    return-wide v0
.end method

.method public getAndIncrement()D
    .locals 6

    .line 141
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 142
    .local v0, "last":D
    iget-wide v2, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 143
    return-wide v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 2

    .line 83
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableDouble;->getValue()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 382
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 383
    .local v0, "bits":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public increment()V
    .locals 4

    .line 130
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 131
    return-void
.end method

.method public incrementAndGet()D
    .locals 4

    .line 154
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 155
    return-wide v0
.end method

.method public intValue()I
    .locals 2

    .line 298
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .line 121
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 2

    .line 112
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 308
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public setValue(D)V
    .locals 0
    .param p1, "value"    # D

    .line 92
    iput-wide p1, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 93
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;

    .line 103
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 104
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableDouble;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(D)V
    .locals 2
    .param p1, "operand"    # D

    .line 220
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 221
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 231
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    .line 232
    return-void
.end method

.method public toDouble()Ljava/lang/Double;
    .locals 2

    .line 337
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableDouble;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 404
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
