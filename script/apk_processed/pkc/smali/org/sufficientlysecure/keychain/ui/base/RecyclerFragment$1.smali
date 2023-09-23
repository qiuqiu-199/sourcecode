.class Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$1;
.super Ljava/lang/Object;
.source "RecyclerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 52
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 5

    move-object/16 v2, p0

    .line 55
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$1;--->run()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
