.class Lorg/sufficientlysecure/donations/DonationsFragment$5;
.super Ljava/lang/Object;
.source "DonationsFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/donations/DonationsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/donations/DonationsFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/donations/DonationsFragment;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$5;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 297
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    .line 298
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$5;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    .line 299
    invoke-virtual {p1}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 300
    iget-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment$5;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mBitcoinAddress:Ljava/lang/String;

    iget-object v1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$5;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    iget-object v1, v1, Lorg/sufficientlysecure/donations/DonationsFragment;->mBitcoinAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 301
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$5;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    .line 305
    invoke-virtual {p1}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/ClipboardManager;

    .line 306
    iget-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment$5;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    iget-object v0, v0, Lorg/sufficientlysecure/donations/DonationsFragment;->mBitcoinAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :goto_0
    iget-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$5;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-virtual {p1}, Lorg/sufficientlysecure/donations/DonationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget v0, Lorg/sufficientlysecure/donations/R$string;->donations__bitcoin_toast_copy:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method
