.class final Lorg/sufficientlysecure/keychain/ui/util/Notify$1;
.super Ljava/lang/Object;
.source "Notify.java"

# interfaces
.implements Lcom/nispok/snackbar/listeners/ActionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;Ljava/lang/Integer;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionListener:Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 78
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$1;->val$actionListener:Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/Notify$1;---><init>(Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActionClicked(Lcom/nispok/snackbar/Snackbar;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 81
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$1;->val$actionListener:Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;->onAction()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/Notify$1;--->onActionClicked(Lcom/nispok/snackbar/Snackbar;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
