.class public final synthetic Lcn/xutils/commons/concurrent/Memoizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcn/xutils/commons/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lcn/xutils/commons/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/xutils/commons/concurrent/Memoizer;->lambda$new$2(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
