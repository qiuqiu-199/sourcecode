.class Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$2;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;


# direct methods
.method constructor <init>(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)V
    .locals 0

    .line 242
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 246
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->setResultForParent(I)V

    .line 247
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$2;->this$0:Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->finish()V

    return-void
.end method
