.class public final Lcn/xutils/commons/function/MethodInvokers;
.super Ljava/lang/Object;
.source "MethodInvokers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    return-void
.end method

.method private static requireMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 234
    const-string v0, "method"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 238
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    invoke-static {p0}, Lcn/xutils/commons/function/MethodInvokers;->requireMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method private static unreflectUnchecked(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 243
    :try_start_0
    invoke-static {p0}, Lcn/xutils/commons/function/MethodInvokers;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcn/xutils/commons/exception/UncheckedIllegalAccessException;

    invoke-direct {v1, v0}, Lcn/xutils/commons/exception/UncheckedIllegalAccessException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
