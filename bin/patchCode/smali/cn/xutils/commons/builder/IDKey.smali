.class final Lcn/xutils/commons/builder/IDKey;
.super Ljava/lang/Object;
.source "IDKey.java"


# instance fields
.field private final id:I

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcn/xutils/commons/builder/IDKey;->id:I

    .line 43
    iput-object p1, p0, Lcn/xutils/commons/builder/IDKey;->value:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 62
    instance-of v0, p1, Lcn/xutils/commons/builder/IDKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 63
    return v1

    .line 65
    :cond_0
    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/builder/IDKey;

    .line 66
    .local v0, "idKey":Lcn/xutils/commons/builder/IDKey;
    iget v2, p0, Lcn/xutils/commons/builder/IDKey;->id:I

    iget v3, v0, Lcn/xutils/commons/builder/IDKey;->id:I

    if-eq v2, v3, :cond_1

    .line 67
    return v1

    .line 70
    :cond_1
    iget-object v2, p0, Lcn/xutils/commons/builder/IDKey;->value:Ljava/lang/Object;

    iget-object v3, v0, Lcn/xutils/commons/builder/IDKey;->value:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 52
    iget v0, p0, Lcn/xutils/commons/builder/IDKey;->id:I

    return v0
.end method
