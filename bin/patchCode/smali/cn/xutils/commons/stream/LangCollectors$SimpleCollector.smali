.class Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;
.super Ljava/lang/Object;
.source "LangCollectors.java"

# interfaces
.implements Ljava/util/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/stream/LangCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Collector<",
        "TT;TA;TR;>;"
    }
.end annotation


# instance fields
.field private final accumulator:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final characteristics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final combiner:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final finisher:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TA;TR;>;"
        }
    .end annotation
.end field

.field private final supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TA;>;",
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TA;>;",
            "Ljava/util/function/Function<",
            "TA;TR;>;",
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;, "Lcn/xutils/commons/stream/LangCollectors$SimpleCollector<TT;TA;TR;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .local p3, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .local p4, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TR;>;"
    .local p5, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;->supplier:Ljava/util/function/Supplier;

    .line 60
    iput-object p2, p0, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;->accumulator:Ljava/util/function/BiConsumer;

    .line 61
    iput-object p3, p0, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;->combiner:Ljava/util/function/BinaryOperator;

    .line 62
    iput-object p4, p0, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;->finisher:Ljava/util/function/Function;

    .line 63
    iput-object p5, p0, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;->characteristics:Ljava/util/Set;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;Lcn/xutils/commons/stream/LangCollectors$SimpleCollector-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public accumulator()Ljava/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;, "Lcn/xutils/commons/stream/LangCollectors$SimpleCollector<TT;TA;TR;>;"
    iget-object v0, p0, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;->accumulator:Ljava/util/function/BiConsumer;

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

    .line 73
    .local p0, "this":Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;, "Lcn/xutils/commons/stream/LangCollectors$SimpleCollector<TT;TA;TR;>;"
    iget-object v0, p0, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;->characteristics:Ljava/util/Set;

    return-object v0
.end method

.method public combiner()Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator<",
            "TA;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;, "Lcn/xutils/commons/stream/LangCollectors$SimpleCollector<TT;TA;TR;>;"
    iget-object v0, p0, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;->combiner:Ljava/util/function/BinaryOperator;

    return-object v0
.end method

.method public finisher()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "TA;TR;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;, "Lcn/xutils/commons/stream/LangCollectors$SimpleCollector<TT;TA;TR;>;"
    iget-object v0, p0, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;->finisher:Ljava/util/function/Function;

    return-object v0
.end method

.method public supplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "TA;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;, "Lcn/xutils/commons/stream/LangCollectors$SimpleCollector<TT;TA;TR;>;"
    iget-object v0, p0, Lcn/xutils/commons/stream/LangCollectors$SimpleCollector;->supplier:Ljava/util/function/Supplier;

    return-object v0
.end method
