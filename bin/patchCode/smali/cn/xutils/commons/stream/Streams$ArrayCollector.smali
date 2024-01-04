.class public Lcn/xutils/commons/stream/Streams$ArrayCollector;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Collector<",
        "TE;",
        "Ljava/util/List<",
        "TE;>;[TE;>;"
    }
.end annotation


# static fields
.field private static final characteristics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$gDKEcGxnaIgU7sqXbIS8kj9NQtE()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/stream/Streams$ArrayCollector;->characteristics:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcn/xutils/commons/stream/Streams$ArrayCollector;, "Lcn/xutils/commons/stream/Streams$ArrayCollector<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v0, "elementType"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcn/xutils/commons/stream/Streams$ArrayCollector;->elementType:Ljava/lang/Class;

    .line 100
    return-void
.end method

.method static synthetic lambda$combiner$0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "left"    # Ljava/util/List;
    .param p1, "right"    # Ljava/util/List;

    .line 115
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    return-object p0
.end method


# virtual methods
.method public accumulator()Ljava/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/List<",
            "TE;>;TE;>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcn/xutils/commons/stream/Streams$ArrayCollector;, "Lcn/xutils/commons/stream/Streams$ArrayCollector<TE;>;"
    new-instance v0, Lcn/xutils/commons/Streams$ArrayCollector$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/xutils/commons/Streams$ArrayCollector$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public characteristics()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcn/xutils/commons/stream/Streams$ArrayCollector;, "Lcn/xutils/commons/stream/Streams$ArrayCollector<TE;>;"
    sget-object v0, Lcn/xutils/commons/stream/Streams$ArrayCollector;->characteristics:Ljava/util/Set;

    return-object v0
.end method

.method public combiner()Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcn/xutils/commons/stream/Streams$ArrayCollector;, "Lcn/xutils/commons/stream/Streams$ArrayCollector<TE;>;"
    new-instance v0, Lcn/xutils/commons/stream/Streams$ArrayCollector$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/xutils/commons/stream/Streams$ArrayCollector$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public finisher()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "TE;>;[TE;>;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcn/xutils/commons/stream/Streams$ArrayCollector;, "Lcn/xutils/commons/stream/Streams$ArrayCollector<TE;>;"
    new-instance v0, Lcn/xutils/commons/stream/Streams$ArrayCollector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/xutils/commons/stream/Streams$ArrayCollector$$ExternalSyntheticLambda2;-><init>(Lcn/xutils/commons/stream/Streams$ArrayCollector;)V

    return-object v0
.end method

.method synthetic lambda$finisher$1$cn-xutils-commons-stream-Streams$ArrayCollector(Ljava/util/List;)[Ljava/lang/Object;
    .locals 2
    .param p1, "list"    # Ljava/util/List;

    .line 122
    .local p0, "this":Lcn/xutils/commons/stream/Streams$ArrayCollector;, "Lcn/xutils/commons/stream/Streams$ArrayCollector<TE;>;"
    iget-object v0, p0, Lcn/xutils/commons/stream/Streams$ArrayCollector;->elementType:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcn/xutils/commons/ArrayUtils;->newInstance(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public supplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcn/xutils/commons/stream/Streams$ArrayCollector;, "Lcn/xutils/commons/stream/Streams$ArrayCollector<TE;>;"
    new-instance v0, Lcn/xutils/commons/stream/Streams$ArrayCollector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/stream/Streams$ArrayCollector$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method
