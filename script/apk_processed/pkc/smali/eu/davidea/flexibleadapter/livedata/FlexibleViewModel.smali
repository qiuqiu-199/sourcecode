.class public abstract Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "FlexibleViewModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Source:",
        "Ljava/lang/Object;",
        "AdapterItem:",
        "Ljava/lang/Object;",
        "Identifier:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/ViewModel;"
    }
.end annotation


# instance fields
.field protected identifier:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "TIdentifier;>;"
        }
    .end annotation
.end field

.field protected liveItems:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "TAdapterItem;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 50
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;->identifier:Landroid/arch/lifecycle/MutableLiveData;

    .line 51
    iget-object v0, p0, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;->identifier:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v1, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;

    invoke-direct {v1, p0}, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;-><init>(Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;)V

    invoke-static {v0, v1}, Landroid/arch/lifecycle/Transformations;->switchMap(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;->liveItems:Landroid/arch/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method protected abstract getSource(Ljava/lang/Object;)Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIdentifier;)",
            "Landroid/arch/lifecycle/LiveData<",
            "TSource;>;"
        }
    .end annotation
.end method

.method protected abstract isSourceValid(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSource;)Z"
        }
    .end annotation
.end method

.method protected abstract map(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSource;)",
            "Ljava/util/List<",
            "TAdapterItem;>;"
        }
    .end annotation
.end method
