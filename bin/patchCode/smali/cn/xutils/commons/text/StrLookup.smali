.class public abstract Lcn/xutils/commons/text/StrLookup;
.super Ljava/lang/Object;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/text/StrLookup$MapStrLookup;,
        Lcn/xutils/commons/text/StrLookup$SystemPropertiesStrLookup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NONE_LOOKUP:Lcn/xutils/commons/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/xutils/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_PROPERTIES_LOOKUP:Lcn/xutils/commons/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/xutils/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcn/xutils/commons/text/StrLookup$MapStrLookup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcn/xutils/commons/text/StrLookup;->NONE_LOOKUP:Lcn/xutils/commons/text/StrLookup;

    .line 56
    new-instance v0, Lcn/xutils/commons/text/StrLookup$SystemPropertiesStrLookup;

    invoke-direct {v0, v1}, Lcn/xutils/commons/text/StrLookup$SystemPropertiesStrLookup;-><init>(Lcn/xutils/commons/text/StrLookup$SystemPropertiesStrLookup-IA;)V

    sput-object v0, Lcn/xutils/commons/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lcn/xutils/commons/text/StrLookup;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 102
    .local p0, "this":Lcn/xutils/commons/text/StrLookup;, "Lcn/xutils/commons/text/StrLookup<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static mapLookup(Ljava/util/Map;)Lcn/xutils/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lcn/xutils/commons/text/StrLookup<",
            "TV;>;"
        }
    .end annotation

    .line 96
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lcn/xutils/commons/text/StrLookup$MapStrLookup;

    invoke-direct {v0, p0}, Lcn/xutils/commons/text/StrLookup$MapStrLookup;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static noneLookup()Lcn/xutils/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/xutils/commons/text/StrLookup<",
            "*>;"
        }
    .end annotation

    .line 64
    sget-object v0, Lcn/xutils/commons/text/StrLookup;->NONE_LOOKUP:Lcn/xutils/commons/text/StrLookup;

    return-object v0
.end method

.method public static systemPropertiesLookup()Lcn/xutils/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/xutils/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcn/xutils/commons/text/StrLookup;->SYSTEM_PROPERTIES_LOOKUP:Lcn/xutils/commons/text/StrLookup;

    return-object v0
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/lang/String;
.end method
