.class final Lorg/sufficientlysecure/keychain/ui/util/Notify$2;
.super Lcom/nispok/snackbar/listeners/EventListenerAdapter;
.source "Notify.java"


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


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 87
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0}, Lcom/nispok/snackbar/listeners/EventListenerAdapter;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/Notify$2;---><init>(Landroid/app/Activity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onDismiss(Lcom/nispok/snackbar/Snackbar;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 95
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$2;->val$activity:Landroid/app/Activity;

    check-cast v1, Lorg/sufficientlysecure/keychain/util/FabContainer;

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/util/FabContainer;->fabRestorePosition()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/Notify$2;--->onDismiss(Lcom/nispok/snackbar/Snackbar;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onShow(Lcom/nispok/snackbar/Snackbar;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 90
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$2;->val$activity:Landroid/app/Activity;

    check-cast v0, Lorg/sufficientlysecure/keychain/util/FabContainer;

    invoke-virtual {v2}, Lcom/nispok/snackbar/Snackbar;->getHeight()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/sufficientlysecure/keychain/util/FabContainer;->fabMoveUp(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/Notify$2;--->onShow(Lcom/nispok/snackbar/Snackbar;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
