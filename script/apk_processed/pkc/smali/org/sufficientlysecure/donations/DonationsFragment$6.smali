.class Lorg/sufficientlysecure/donations/DonationsFragment$6;
.super Ljava/lang/Object;
.source "DonationsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/donations/DonationsFragment;->openDialog(IILjava/lang/String;)V
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

    .line 325
    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$6;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 328
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
