.class public interface abstract Lcn/xutils/commons/function/FailableConsumer;
.super Ljava/lang/Object;
.source "FailableConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lcn/xutils/commons/function/FailableConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/xutils/commons/function/FailableConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcn/xutils/commons/function/FailableConsumer$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;)V

    sput-object v1, Lcn/xutils/commons/function/FailableConsumer;->NOP:Lcn/xutils/commons/function/FailableConsumer;

    return-void
.end method

.method public static synthetic lambda$andThen$0(Lcn/xutils/commons/function/FailableConsumer;Lcn/xutils/commons/function/FailableConsumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableConsumer;
    .param p1, "after"    # Lcn/xutils/commons/function/FailableConsumer;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    .local p0, "this":Lcn/xutils/commons/function/FailableConsumer;, "Lcn/xutils/commons/function/FailableConsumer<TT;TE;>;"
    invoke-interface {p0, p2}, Lcn/xutils/commons/function/FailableConsumer;->accept(Ljava/lang/Object;)V

    .line 73
    invoke-interface {p1, p2}, Lcn/xutils/commons/function/FailableConsumer;->accept(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public static nop()Lcn/xutils/commons/function/FailableConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableConsumer<",
            "TT;TE;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcn/xutils/commons/function/FailableConsumer;->NOP:Lcn/xutils/commons/function/FailableConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public andThen(Lcn/xutils/commons/function/FailableConsumer;)Lcn/xutils/commons/function/FailableConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableConsumer<",
            "-TT;TE;>;)",
            "Lcn/xutils/commons/function/FailableConsumer<",
            "TT;TE;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcn/xutils/commons/function/FailableConsumer;, "Lcn/xutils/commons/function/FailableConsumer<TT;TE;>;"
    .local p1, "after":Lcn/xutils/commons/function/FailableConsumer;, "Lcn/xutils/commons/function/FailableConsumer<-TT;TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lcn/xutils/commons/function/FailableConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableConsumer$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/function/FailableConsumer;Lcn/xutils/commons/function/FailableConsumer;)V

    return-object v0
.end method
