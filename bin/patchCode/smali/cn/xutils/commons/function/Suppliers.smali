.class public Lcn/xutils/commons/function/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 37
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
