.class final Ledu/cmu/cylab/starslinger/exchange/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->xshowHelp(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 82
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method