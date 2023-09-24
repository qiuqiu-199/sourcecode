.class Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreInfo"
.end annotation


# instance fields
.field item:Leu/davidea/flexibleadapter/items/IFlexible;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field refItem:Leu/davidea/flexibleadapter/items/IFlexible;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field refPosition:I

.field relativePosition:I

.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;


# direct methods
.method public constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 5386
    invoke-direct {p0, p1, p2, p3, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IFlexible;I)V

    return-void
.end method

.method public constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IFlexible;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 5392
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 5376
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->relativePosition:I

    const/4 p1, 0x0

    .line 5378
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5380
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5393
    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5394
    iput-object p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5395
    iput p4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->relativePosition:I

    return-void
.end method


# virtual methods
.method public getRestorePosition(Z)I
    .locals 3

    .line 5402
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    if-gez v0, :cond_0

    .line 5403
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v0

    iput v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    .line 5405
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 5406
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5408
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    check-cast v0, Leu/davidea/flexibleadapter/items/IExpandable;

    invoke-virtual {v2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getCurrentChildren(Leu/davidea/flexibleadapter/items/IExpandable;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1600(Leu/davidea/flexibleadapter/FlexibleAdapter;ILjava/util/List;I)I

    goto :goto_0

    .line 5409
    :cond_1
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 5410
    iget p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    check-cast v0, Leu/davidea/flexibleadapter/items/IExpandable;

    invoke-static {v1, v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1700(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr p1, v0

    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    goto :goto_0

    .line 5412
    :cond_2
    iget p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    add-int/2addr p1, v2

    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    .line 5414
    :goto_0
    iget p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestoreInfo[item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
