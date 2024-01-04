.class public Lcn/xutils/commons/reflect/MemberUtilsX;
.super Ljava/lang/Object;
.source "MemberUtilsX.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareConstructorFit(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 25
    .local p0, "left":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p1, "right":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p2, "actual":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/reflect/MemberUtils;->compareConstructorFit(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static compareMethodFit(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Class;)I
    .locals 1
    .param p0, "left"    # Ljava/lang/reflect/Method;
    .param p1, "right"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 29
    .local p2, "actual":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/reflect/MemberUtils;->compareMethodFit(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Class;)I

    move-result v0

    return v0
.end method
