.class Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1$1;
.super Ljava/lang/Object;
.source "FlexibleViewModel.java"

# interfaces
.implements Landroid/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;->apply(Ljava/lang/Object;)Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/core/util/Function<",
        "TSource;",
        "Ljava/util/List<",
        "TAdapterItem;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;)V
    .locals 0

    .line 54
    iput-object p1, p0, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1$1;->this$1:Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1$1;->apply(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSource;)",
            "Ljava/util/List<",
            "TAdapterItem;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1$1;->this$1:Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;

    iget-object v0, v0, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;->this$0:Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;->isSourceValid(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1$1;->this$1:Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;

    iget-object v0, v0, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;->this$0:Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;->map(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1$1;->this$1:Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;

    iget-object p1, p1, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel$1;->this$0:Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;

    iget-object p1, p1, Leu/davidea/flexibleadapter/livedata/FlexibleViewModel;->liveItems:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
