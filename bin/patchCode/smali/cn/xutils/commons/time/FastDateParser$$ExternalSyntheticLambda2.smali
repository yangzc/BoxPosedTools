.class public final synthetic Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/time/FastDateParser;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/Calendar;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/time/FastDateParser;ILjava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/time/FastDateParser;

    iput p2, p0, Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda2;->f$2:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda2;->f$0:Lcn/xutils/commons/time/FastDateParser;

    iget v1, p0, Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser$$ExternalSyntheticLambda2;->f$2:Ljava/util/Calendar;

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {v0, v1, v2, p1}, Lcn/xutils/commons/time/FastDateParser;->lambda$getLocaleSpecificStrategy$2$cn-xutils-commons-time-FastDateParser(ILjava/util/Calendar;Ljava/util/Locale;)Lcn/xutils/commons/time/FastDateParser$Strategy;

    move-result-object p1

    return-object p1
.end method
