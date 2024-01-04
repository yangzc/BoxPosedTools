.class public interface abstract Lcn/xutils/commons/function/BooleanConsumer;
.super Ljava/lang/Object;
.source "BooleanConsumer.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lcn/xutils/commons/function/BooleanConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcn/xutils/commons/function/BooleanConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/xutils/commons/function/BooleanConsumer$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/BooleanConsumer;->NOP:Lcn/xutils/commons/function/BooleanConsumer;

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lcn/xutils/commons/function/BooleanConsumer;Lcn/xutils/commons/function/BooleanConsumer;Z)V
    .locals 0
    .param p0, "_this"    # Lcn/xutils/commons/function/BooleanConsumer;
    .param p1, "after"    # Lcn/xutils/commons/function/BooleanConsumer;
    .param p2, "t"    # Z

    .line 64
    invoke-interface {p0, p2}, Lcn/xutils/commons/function/BooleanConsumer;->accept(Z)V

    .line 65
    invoke-interface {p1, p2}, Lcn/xutils/commons/function/BooleanConsumer;->accept(Z)V

    .line 66
    return-void
.end method

.method public static synthetic lambda$static$0(Z)V
    .locals 0
    .param p0, "t"    # Z

    .line 33
    return-void
.end method

.method public static nop()Lcn/xutils/commons/function/BooleanConsumer;
    .locals 1

    .line 41
    sget-object v0, Lcn/xutils/commons/function/BooleanConsumer;->NOP:Lcn/xutils/commons/function/BooleanConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(Z)V
.end method

.method public andThen(Lcn/xutils/commons/function/BooleanConsumer;)Lcn/xutils/commons/function/BooleanConsumer;
    .locals 1
    .param p1, "after"    # Lcn/xutils/commons/function/BooleanConsumer;

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Lcn/xutils/commons/function/BooleanConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/BooleanConsumer$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/function/BooleanConsumer;Lcn/xutils/commons/function/BooleanConsumer;)V

    return-object v0
.end method
