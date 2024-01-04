.class final enum Lcn/xutils/commons/time/DateUtils$ModifyType;
.super Ljava/lang/Enum;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ModifyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/xutils/commons/time/DateUtils$ModifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/xutils/commons/time/DateUtils$ModifyType;

.field public static final enum CEILING:Lcn/xutils/commons/time/DateUtils$ModifyType;

.field public static final enum ROUND:Lcn/xutils/commons/time/DateUtils$ModifyType;

.field public static final enum TRUNCATE:Lcn/xutils/commons/time/DateUtils$ModifyType;


# direct methods
.method private static synthetic $values()[Lcn/xutils/commons/time/DateUtils$ModifyType;
    .locals 3

    .line 124
    sget-object v0, Lcn/xutils/commons/time/DateUtils$ModifyType;->TRUNCATE:Lcn/xutils/commons/time/DateUtils$ModifyType;

    sget-object v1, Lcn/xutils/commons/time/DateUtils$ModifyType;->ROUND:Lcn/xutils/commons/time/DateUtils$ModifyType;

    sget-object v2, Lcn/xutils/commons/time/DateUtils$ModifyType;->CEILING:Lcn/xutils/commons/time/DateUtils$ModifyType;

    filled-new-array {v0, v1, v2}, [Lcn/xutils/commons/time/DateUtils$ModifyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 128
    new-instance v0, Lcn/xutils/commons/time/DateUtils$ModifyType;

    const-string v1, "TRUNCATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/xutils/commons/time/DateUtils$ModifyType;->TRUNCATE:Lcn/xutils/commons/time/DateUtils$ModifyType;

    .line 133
    new-instance v0, Lcn/xutils/commons/time/DateUtils$ModifyType;

    const-string v1, "ROUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/xutils/commons/time/DateUtils$ModifyType;->ROUND:Lcn/xutils/commons/time/DateUtils$ModifyType;

    .line 138
    new-instance v0, Lcn/xutils/commons/time/DateUtils$ModifyType;

    const-string v1, "CEILING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/xutils/commons/time/DateUtils$ModifyType;->CEILING:Lcn/xutils/commons/time/DateUtils$ModifyType;

    .line 124
    invoke-static {}, Lcn/xutils/commons/time/DateUtils$ModifyType;->$values()[Lcn/xutils/commons/time/DateUtils$ModifyType;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/DateUtils$ModifyType;->$VALUES:[Lcn/xutils/commons/time/DateUtils$ModifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/xutils/commons/time/DateUtils$ModifyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 124
    const-class v0, Lcn/xutils/commons/time/DateUtils$ModifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/DateUtils$ModifyType;

    return-object v0
.end method

.method public static values()[Lcn/xutils/commons/time/DateUtils$ModifyType;
    .locals 1

    .line 124
    sget-object v0, Lcn/xutils/commons/time/DateUtils$ModifyType;->$VALUES:[Lcn/xutils/commons/time/DateUtils$ModifyType;

    invoke-virtual {v0}, [Lcn/xutils/commons/time/DateUtils$ModifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/xutils/commons/time/DateUtils$ModifyType;

    return-object v0
.end method
