.class public final synthetic Lcn/xutils/commons/LocaleUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/LocaleUtils$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/LocaleUtils$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/util/Locale;

    invoke-static {v0, p1}, Lcn/xutils/commons/LocaleUtils;->lambda$countriesByLanguage$0(Ljava/lang/String;Ljava/util/Locale;)Z

    move-result p1

    return p1
.end method