.class public Lcn/xutils/commons/reflect/InheritanceUtils;
.super Ljava/lang/Object;
.source "InheritanceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static distance(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 49
    .local p0, "child":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, -0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 58
    .local v1, "cParent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcn/xutils/commons/BooleanUtils;->toInteger(Z)I

    move-result v2

    .line 60
    .local v2, "d":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 61
    return v2

    .line 63
    :cond_2
    invoke-static {v1, p1}, Lcn/xutils/commons/reflect/InheritanceUtils;->distance(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v3

    add-int/2addr v2, v3

    .line 64
    if-lez v2, :cond_3

    add-int/lit8 v0, v2, 0x1

    :cond_3
    return v0

    .line 50
    .end local v1    # "cParent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "d":I
    :cond_4
    :goto_0
    return v0
.end method
