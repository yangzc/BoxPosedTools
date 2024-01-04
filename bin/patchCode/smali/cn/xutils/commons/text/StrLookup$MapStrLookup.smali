.class Lcn/xutils/commons/text/StrLookup$MapStrLookup;
.super Lcn/xutils/commons/text/StrLookup;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/text/StrLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MapStrLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/xutils/commons/text/StrLookup<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lcn/xutils/commons/text/StrLookup$MapStrLookup;, "Lcn/xutils/commons/text/StrLookup$MapStrLookup<TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-direct {p0}, Lcn/xutils/commons/text/StrLookup;-><init>()V

    .line 149
    iput-object p1, p0, Lcn/xutils/commons/text/StrLookup$MapStrLookup;->map:Ljava/util/Map;

    .line 150
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 164
    .local p0, "this":Lcn/xutils/commons/text/StrLookup$MapStrLookup;, "Lcn/xutils/commons/text/StrLookup$MapStrLookup<TV;>;"
    iget-object v0, p0, Lcn/xutils/commons/text/StrLookup$MapStrLookup;->map:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 165
    return-object v1

    .line 167
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 168
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 169
    return-object v1

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
