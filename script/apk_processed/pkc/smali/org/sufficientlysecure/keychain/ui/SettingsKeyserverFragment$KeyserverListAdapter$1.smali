.class Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$1;
.super Ljava/lang/Object;
.source "SettingsKeyserverFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

.field final synthetic val$holder:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 263
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$1;->this$1:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$1;->val$holder:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$1;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 266
    invoke-static {v2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$1;->this$1:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v1

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$1;->val$holder:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 v1, 0x0

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$1;--->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
