.class Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;
.super Ljava/lang/Object;
.source "FlexibleViewModel.java"

# interfaces
.implements Landroid/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/core/util/Function<",
        "TIdentifier;",
        "Landroid/arch/lifecycle/LiveData<",
        "Ljava/util/List<",
        "TAdapterItem;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;)V
    .locals 0

    .line 51
    iput-object p1, p0, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;->this$0:Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIdentifier;)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "TAdapterItem;>;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;->this$0:Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;->getSource(Ljava/lang/Object;)Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1$1;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1$1;-><init>(Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;)V

    invoke-static {p1, v0}, Landroid/arch/lifecycle/Transformations;->map(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;->apply(Ljava/lang/Object;)Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
