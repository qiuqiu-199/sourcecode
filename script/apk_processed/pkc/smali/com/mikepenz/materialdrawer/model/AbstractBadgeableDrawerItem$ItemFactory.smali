.class public Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ItemFactory;
.super Ljava/lang/Object;
.source "AbstractBadgeableDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/utils/ViewHolderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/utils/ViewHolderFactory<",
        "Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ItemFactory;->create(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public create(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;
    .locals 1

    .line 99
    new-instance v0, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/materialdrawer/model/AbstractBadgeableDrawerItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
