.class public final synthetic Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/ThreadGroup;

    invoke-static {v0, p1}, Lcn/xutils/commons/ThreadUtils;->lambda$findThreadsByName$2(Ljava/lang/String;Ljava/lang/ThreadGroup;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
