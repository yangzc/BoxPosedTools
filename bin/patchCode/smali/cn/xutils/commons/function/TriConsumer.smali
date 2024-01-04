.class public interface abstract Lcn/xutils/commons/function/TriConsumer;
.super Ljava/lang/Object;
.source "TriConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$andThen$0(Lcn/xutils/commons/function/TriConsumer;Lcn/xutils/commons/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lcn/xutils/commons/function/TriConsumer;
    .param p1, "after"    # Lcn/xutils/commons/function/TriConsumer;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;
    .param p4, "v"    # Ljava/lang/Object;

    .line 66
    .local p0, "this":Lcn/xutils/commons/function/TriConsumer;, "Lcn/xutils/commons/function/TriConsumer<TT;TU;TV;>;"
    invoke-interface {p0, p2, p3, p4}, Lcn/xutils/commons/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    invoke-interface {p1, p2, p3, p4}, Lcn/xutils/commons/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)V"
        }
    .end annotation
.end method

.method public andThen(Lcn/xutils/commons/function/TriConsumer;)Lcn/xutils/commons/function/TriConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/TriConsumer<",
            "-TT;-TU;-TV;>;)",
            "Lcn/xutils/commons/function/TriConsumer<",
            "TT;TU;TV;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcn/xutils/commons/function/TriConsumer;, "Lcn/xutils/commons/function/TriConsumer<TT;TU;TV;>;"
    .local p1, "after":Lcn/xutils/commons/function/TriConsumer;, "Lcn/xutils/commons/function/TriConsumer<-TT;-TU;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcn/xutils/commons/function/TriConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/TriConsumer$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/function/TriConsumer;Lcn/xutils/commons/function/TriConsumer;)V

    return-object v0
.end method
