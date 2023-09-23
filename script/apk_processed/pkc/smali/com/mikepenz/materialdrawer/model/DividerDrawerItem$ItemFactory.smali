.class public Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ItemFactory;
.super Ljava/lang/Object;
.source "DividerDrawerItem.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/utils/ViewHolderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/utils/ViewHolderFactory<",
        "Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ItemFactory;->create(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public create(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;
    .locals 2

    .line 58
    new-instance v0, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$ViewHolder;-><init>(Landroid/view/View;Lcom/mikepenz/materialdrawer/model/DividerDrawerItem$1;)V

    return-object v0
.end method
