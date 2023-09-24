.class Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$1;
.super Landroid/os/Handler;
.source "CreateKeyEmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->addEmail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 161
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 164
    iget v0, v3, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 165
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "email"

    .line 167
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;

    invoke-static {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;)Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->add(Ljava/lang/String;)V

    :cond_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$1;--->handleMessage(Landroid/os/Message;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
