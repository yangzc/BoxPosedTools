.class public final synthetic Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/CharSequence;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda4;->f$0:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda4;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda4;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda4;->f$0:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda4;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcn/xutils/commons/stream/LangCollectors$$ExternalSyntheticLambda4;->f$2:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/stream/LangCollectors;->lambda$joining$0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    return-object v0
.end method
