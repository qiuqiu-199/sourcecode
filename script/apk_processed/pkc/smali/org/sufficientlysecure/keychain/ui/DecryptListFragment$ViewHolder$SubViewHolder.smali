.class public Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;
.super Ljava/lang/Object;
.source "DecryptListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubViewHolder"
.end annotation


# instance fields
.field public vFile:Landroid/view/View;

.field public vFilename:Landroid/widget/TextView;

.field public vFilesize:Landroid/widget/TextView;

.field public vOverflowMenu:Landroid/widget/ImageView;

.field public vThumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 1176
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f09016c

    .line 1177
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vFile:Landroid/view/View;

    const v0, 0x7f090170

    .line 1178
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vFilename:Landroid/widget/TextView;

    const v0, 0x7f090171

    .line 1179
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vFilesize:Landroid/widget/TextView;

    const v0, 0x7f090315

    .line 1180
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vThumbnail:Landroid/widget/ImageView;

    const v0, 0x7f09007f

    .line 1181
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vOverflowMenu:Landroid/widget/ImageView;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;---><init>(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
