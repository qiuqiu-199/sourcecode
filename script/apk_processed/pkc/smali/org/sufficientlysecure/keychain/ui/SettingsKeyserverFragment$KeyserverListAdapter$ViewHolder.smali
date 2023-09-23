.class public Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SettingsKeyserverFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public final dragHandleView:Landroid/widget/ImageView;

.field private isSelectedKeyserver:Z

.field public final keyserverUrl:Landroid/widget/TextView;

.field public final outerLayout:Landroid/view/ViewGroup;

.field public final selectedServerLabel:Landroid/widget/TextView;

.field final synthetic this$1:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 313
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->this$1:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    .line 314
    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 311
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->isSelectedKeyserver:Z

    const v1, 0x7f090261

    .line 315
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->outerLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0902c8

    .line 316
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->selectedServerLabel:Landroid/widget/TextView;

    const v1, 0x7f0901be

    .line 318
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->keyserverUrl:Landroid/widget/TextView;

    const v1, 0x7f090140

    .line 319
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->dragHandleView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 321
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$602(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;Z)Z
    .locals 0

    .line 303
    iput-boolean p1, p0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->isSelectedKeyserver:Z

    return p1
.end method


# virtual methods
.method public onItemClear()V
    .locals 4

    move-object/16 v1, p0

    .line 344
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->isSelectedKeyserver:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->showAsSelectedKeyserver()V

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->showAsUnselectedKeyserver()V

    :goto_0
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;--->onItemClear()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onItemSelected()V
    .locals 6

    move-object/16 v3, p0

    .line 338
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->selectedServerLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->this$1:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040074

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->getColorFromAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;--->onItemSelected()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showAsSelectedKeyserver()V
    .locals 6

    move-object/16 v3, p0

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->isSelectedKeyserver:Z

    .line 326
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->selectedServerLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->outerLayout:Landroid/view/ViewGroup;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->this$1:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040083

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->getColorFromAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;--->showAsSelectedKeyserver()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showAsUnselectedKeyserver()V
    .locals 6

    move-object/16 v3, p0

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->isSelectedKeyserver:Z

    .line 332
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->selectedServerLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->outerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;--->showAsUnselectedKeyserver()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
