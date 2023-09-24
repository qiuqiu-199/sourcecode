.class final Lorg/sufficientlysecure/keychain/ui/util/Notify$3;
.super Ljava/lang/Object;
.source "Notify.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$snackbar:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method constructor <init>(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 100
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/Notify$3;---><init>(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public show()V
    .locals 5

    move-object/16 v2, p0

    .line 103
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/nispok/snackbar/SnackbarManager;->show(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/Notify$3;--->show()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public show(Landroid/support/v4/app/Fragment;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 118
    instance-of v0, v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/nispok/snackbar/SnackbarManager;->show(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;)V

    return-void

    .line 124
    :cond_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/Notify$3;--->show(Landroid/support/v4/app/Fragment;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public show(Landroid/support/v4/app/Fragment;Z)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 108
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0, v3}, Lcom/nispok/snackbar/Snackbar;->animation(Z)Lcom/nispok/snackbar/Snackbar;

    .line 109
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0, v3}, Lcom/nispok/snackbar/Snackbar;->dismissOnActionClicked(Z)Lcom/nispok/snackbar/Snackbar;

    .line 110
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/Notify$3;--->show(Landroid/support/v4/app/Fragment;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public show(Landroid/view/ViewGroup;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-eqz v2, :cond_0

    .line 130
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;->val$snackbar:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0, v2}, Lcom/nispok/snackbar/SnackbarManager;->show(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;)V

    return-void

    .line 134
    :cond_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$3;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/Notify$3;--->show(Landroid/view/ViewGroup;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
