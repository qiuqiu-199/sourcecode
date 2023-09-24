.class Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CreateKeyEmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mDeleteButton:Landroid/widget/ImageButton;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 265
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;

    .line 266
    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v1, 0x7f0900fa

    .line 267
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0900f9

    .line 268
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
