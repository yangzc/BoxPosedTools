.class public final synthetic Lcn/xutils/commons/concurrent/Memoizer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/concurrent/Computable;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/concurrent/Computable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/concurrent/Memoizer$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/concurrent/Computable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/concurrent/Memoizer$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/concurrent/Computable;

    invoke-static {v0, p1}, Lcn/xutils/commons/concurrent/Memoizer;->lambda$new$1(Lcn/xutils/commons/concurrent/Computable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
