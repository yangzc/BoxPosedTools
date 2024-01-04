.class Lcn/xutils/commons/text/StrLookup$SystemPropertiesStrLookup;
.super Lcn/xutils/commons/text/StrLookup;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/text/StrLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemPropertiesStrLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/text/StrLookup<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcn/xutils/commons/text/StrLookup;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/xutils/commons/text/StrLookup$SystemPropertiesStrLookup-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/xutils/commons/text/StrLookup$SystemPropertiesStrLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 184
    invoke-static {p1}, Lcn/xutils/commons/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
