.class Lorg/sufficientlysecure/donations/DonationsFragment$1;
.super Ljava/lang/Object;
.source "DonationsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 222
    iput-object p1, p0, Lorg/sufficientlysecure/donations/DonationsFragment$1;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/sufficientlysecure/donations/DonationsFragment$1;->this$0:Lorg/sufficientlysecure/donations/DonationsFragment;

    invoke-virtual {v0, p1}, Lorg/sufficientlysecure/donations/DonationsFragment;->donateGoogleOnClick(Landroid/view/View;)V

    return-void
.end method
