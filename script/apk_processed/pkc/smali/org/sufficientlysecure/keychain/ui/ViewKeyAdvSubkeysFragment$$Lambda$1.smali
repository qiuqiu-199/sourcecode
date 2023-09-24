.class final synthetic Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$1;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$1;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$1;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->lambda$onCreateView$1$ViewKeyAdvSubkeysFragment(Landroid/view/View;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
