.class public final synthetic Lcn/xutils/commons/ClassUtils$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/ClassUtils$$ExternalSyntheticLambda10;->f$0:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/ClassUtils$$ExternalSyntheticLambda10;->f$0:[Ljava/lang/Class;

    invoke-static {v0, p1}, Lcn/xutils/commons/ClassUtils;->lambda$primitivesToWrappers$6([Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
