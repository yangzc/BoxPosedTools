.class public final synthetic Lcn/xutils/commons/ThreadUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/ThreadGroup;

    invoke-static {p1}, Lcn/xutils/commons/ThreadUtils;->$r8$lambda$mQkebaEYDLSkv_JWg3J1vYjdd44(Ljava/lang/ThreadGroup;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
