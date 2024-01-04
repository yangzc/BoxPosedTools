.class public final enum Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;
.super Ljava/lang/Enum;
.source "NumericEntityUnescaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/text/translate/NumericEntityUnescaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OPTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

.field public static final enum errorIfNoSemiColon:Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

.field public static final enum semiColonOptional:Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

.field public static final enum semiColonRequired:Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;


# direct methods
.method private static synthetic $values()[Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;
    .locals 3

    .line 40
    sget-object v0, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    sget-object v1, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;->semiColonOptional:Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    sget-object v2, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;->errorIfNoSemiColon:Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    filled-new-array {v0, v1, v2}, [Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    const-string v1, "semiColonRequired"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    .line 50
    new-instance v0, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    const-string v1, "semiColonOptional"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;->semiColonOptional:Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    .line 55
    new-instance v0, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    const-string v1, "errorIfNoSemiColon"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;->errorIfNoSemiColon:Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    .line 40
    invoke-static {}, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;->$values()[Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;->$VALUES:[Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    return-object v0
.end method

.method public static values()[Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;
    .locals 1

    .line 40
    sget-object v0, Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;->$VALUES:[Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {v0}, [Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/xutils/commons/text/translate/NumericEntityUnescaper$OPTION;

    return-object v0
.end method
