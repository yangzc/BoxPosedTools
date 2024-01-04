.class public Lcn/xutils/commons/mutable/MutableLong;
.super Ljava/lang/Number;
.source "MutableLong.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcn/xutils/commons/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcn/xutils/commons/mutable/MutableLong;",
        ">;",
        "Lcn/xutils/commons/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeaa4a2677L


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "value"    # J

    .line 53
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 54
    iput-wide p1, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;

    .line 63
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 76
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2
    .param p1, "operand"    # J

    .line 183
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 184
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 194
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 195
    return-void
.end method

.method public addAndGet(J)J
    .locals 2
    .param p1, "operand"    # J

    .line 227
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 228
    return-wide v0
.end method

.method public addAndGet(Ljava/lang/Number;)J
    .locals 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 241
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 242
    return-wide v0
.end method

.method public compareTo(Lcn/xutils/commons/mutable/MutableLong;)I
    .locals 4
    .param p1, "other"    # Lcn/xutils/commons/mutable/MutableLong;

    .line 358
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    iget-wide v2, p1, Lcn/xutils/commons/mutable/MutableLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lcn/xutils/commons/math/NumberUtils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcn/xutils/commons/mutable/MutableLong;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableLong;->compareTo(Lcn/xutils/commons/mutable/MutableLong;)I

    move-result p1

    return p1
.end method

.method public decrement()V
    .locals 4

    .line 148
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 149
    return-void
.end method

.method public decrementAndGet()J
    .locals 4

    .line 172
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 173
    return-wide v0
.end method

.method public doubleValue()D
    .locals 2

    .line 312
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 334
    instance-of v0, p1, Lcn/xutils/commons/mutable/MutableLong;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 335
    iget-wide v2, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/mutable/MutableLong;

    invoke-virtual {v0}, Lcn/xutils/commons/mutable/MutableLong;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 337
    :cond_1
    return v1
.end method

.method public floatValue()F
    .locals 2

    .line 302
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public getAndAdd(J)J
    .locals 4
    .param p1, "operand"    # J

    .line 254
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 255
    .local v0, "last":J
    iget-wide v2, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 256
    return-wide v0
.end method

.method public getAndAdd(Ljava/lang/Number;)J
    .locals 6
    .param p1, "operand"    # Ljava/lang/Number;

    .line 269
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 270
    .local v0, "last":J
    iget-wide v2, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 271
    return-wide v0
.end method

.method public getAndDecrement()J
    .locals 6

    .line 159
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 160
    .local v0, "last":J
    iget-wide v2, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 161
    return-wide v0
.end method

.method public getAndIncrement()J
    .locals 6

    .line 125
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 126
    .local v0, "last":J
    iget-wide v2, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 127
    return-wide v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 2

    .line 85
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableLong;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 347
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public increment()V
    .locals 4

    .line 114
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 115
    return-void
.end method

.method public incrementAndGet()J
    .locals 4

    .line 138
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 139
    return-wide v0
.end method

.method public intValue()I
    .locals 2

    .line 282
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 292
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .locals 0
    .param p1, "value"    # J

    .line 94
    iput-wide p1, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 95
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 106
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableLong;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(J)V
    .locals 2
    .param p1, "operand"    # J

    .line 204
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 205
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 4
    .param p1, "operand"    # Ljava/lang/Number;

    .line 215
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    .line 216
    return-void
.end method

.method public toLong()Ljava/lang/Long;
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableLong;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 368
    iget-wide v0, p0, Lcn/xutils/commons/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
