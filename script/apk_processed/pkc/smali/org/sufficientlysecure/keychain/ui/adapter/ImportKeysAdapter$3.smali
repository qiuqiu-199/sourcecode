.class Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$3;
.super Ljava/lang/Object;
.source "ImportKeysAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

.field final synthetic val$entry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 182
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$3;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$3;->val$entry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$3;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 185
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$3;->val$entry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getKeyIdHex()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdHexToKeyId(Ljava/lang/String;)J

    move-result-wide v0

    .line 186
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$3;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->access$400(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getViewKeyActivityIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 187
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$3;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->access$400(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$3;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
