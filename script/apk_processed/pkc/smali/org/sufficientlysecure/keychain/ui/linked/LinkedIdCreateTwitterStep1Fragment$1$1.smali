.class Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1$1;
.super Landroid/os/AsyncTask;
.source "LinkedIdCreateTwitterStep1Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;

.field final synthetic val$handle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 55
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev1Fragment$1$1;->this$1:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev1Fragment$1;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1$1;->val$handle:Ljava/lang/String;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1$1;---><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    const/4 v1, 0x1

    .line 59
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1$1;--->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 65
    invoke-super {v2, v3}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1$1;--->onPostExecute(Ljava/lang/Boolean;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    .line 68
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev3Fragment$1$1;->this$1:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev3Fragment$1;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev3Fragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev3Fragment;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v0, "Connection error while checking username!"

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1$1;->this$1:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;

    .line 70
    invoke-interface {v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    .line 74
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev3Fragment$1$1;->this$1:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev3Fragment$1;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev3Fragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev3Fragment;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v0, "This handle does not exist on Twitter!"

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1$1;->this$1:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;

    .line 77
    invoke-interface {v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    .line 81
    :cond_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStev3Fragment$1$1;->val$handle:Ljava/lang/String;

    .line 82
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;->newInstance(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep2Fragment;

    move-result-object v3

    .line 84
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1$1;->this$1:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->loadFragment(Landroid/support/v4/app/Fragment;I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateTwitterStep1Fragment$1$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
