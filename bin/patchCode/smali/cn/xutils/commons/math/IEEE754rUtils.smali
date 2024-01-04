.class public Lcn/xutils/commons/math/IEEE754rUtils;
.super Ljava/lang/Object;
.source "IEEE754rUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static max(DD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 210
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    return-wide p2

    .line 213
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    return-wide p0

    .line 216
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 197
    invoke-static {p0, p1, p2, p3}, Lcn/xutils/commons/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lcn/xutils/commons/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs max([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 152
    const-string v0, "array"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Array cannot be empty."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    aget-wide v0, p0, v1

    .line 157
    .local v0, "max":D
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 158
    aget-wide v3, p0, v2

    invoke-static {v3, v4, v0, v1}, Lcn/xutils/commons/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .end local v2    # "j":I
    :cond_1
    return-wide v0
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 243
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    return p1

    .line 246
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    return p0

    .line 249
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 230
    invoke-static {p0, p1}, Lcn/xutils/commons/math/IEEE754rUtils;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Lcn/xutils/commons/math/IEEE754rUtils;->max(FF)F

    move-result v0

    return v0
.end method

.method public static varargs max([F)F
    .locals 4
    .param p0, "array"    # [F

    .line 174
    const-string v0, "array"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Array cannot be empty."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 178
    aget v0, p0, v1

    .line 179
    .local v0, "max":F
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 180
    aget v2, p0, v1

    invoke-static {v2, v0}, Lcn/xutils/commons/math/IEEE754rUtils;->max(FF)F

    move-result v0

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public static min(DD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 100
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    return-wide p2

    .line 103
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    return-wide p0

    .line 106
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcn/xutils/commons/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lcn/xutils/commons/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 42
    const-string v0, "array"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Array cannot be empty."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    aget-wide v0, p0, v1

    .line 47
    .local v0, "min":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 48
    aget-wide v3, p0, v2

    invoke-static {v3, v4, v0, v1}, Lcn/xutils/commons/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method public static min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 133
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    return p1

    .line 136
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    return p0

    .line 139
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 120
    invoke-static {p0, p1}, Lcn/xutils/commons/math/IEEE754rUtils;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Lcn/xutils/commons/math/IEEE754rUtils;->min(FF)F

    move-result v0

    return v0
.end method

.method public static varargs min([F)F
    .locals 4
    .param p0, "array"    # [F

    .line 64
    const-string v0, "array"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Array cannot be empty."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    aget v0, p0, v1

    .line 69
    .local v0, "min":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 70
    aget v2, p0, v1

    invoke-static {v2, v0}, Lcn/xutils/commons/math/IEEE754rUtils;->min(FF)F

    move-result v0

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "i":I
    :cond_1
    return v0
.end method
